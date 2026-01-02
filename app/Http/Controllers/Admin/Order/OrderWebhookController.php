<?php

namespace App\Http\Controllers\Admin\Order;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\OrderRepository;
use Illuminate\Support\Facades\Log;

class OrderWebhookController extends Controller
{
    protected OrderRepository $orderRepo;

    public function __construct(OrderRepository $orderRepo)
    {
        $this->orderRepo = $orderRepo;
    }

    public function handle(Request $request, string $courier)
    {
        Log::info("Webhook received from {$courier}", $request->all());

        switch ($courier) {
            case 'pathao':
                return $this->handlePathao($request);
            case 'steadfast':
                return $this->handleSteadfast($request);
            case 'redx':
                return $this->handleRedx($request);
            default:
                return response()->json(['status' => 'error', 'message' => 'Unknown courier'], 400);
        }
    }

    private function handlePathao(Request $request)
    {
        // Verify secret header
        $webhookSecret = $request->header('X-Pathao-Merchant-Webhook-Integration-Secret');
        if ($webhookSecret !== 'f3992ecc-59da-4cbe-a049-a13da2018d51') {
            Log::warning('Invalid Pathao webhook secret', $request->all());
            return response()->json(['status' => 'error', 'message' => 'Unauthorized'], 401);
        }

        $event = $request->input('event');
        $merchantOrderId = $request->input('merchant_order_id');
        $trackingCode = $request->input('tracking_code');

        if (!$merchantOrderId) {
            return response()->json(['status' => 'error', 'message' => 'Missing merchant_order_id'], 400);
        }

        // Map Pathao events to internal statuses
        $statusMap = [
            'Order Created'       => 'Pending',
            'Assigned For Pickup' => 'Pickup Assigned',
            'Pickup'              => 'Picked Up',
            'In Transit'          => 'In Transit',
            'Delivered'           => 'Delivered',
            'Delivery Failed'     => 'Delivery Failed',
            'Return'              => 'Returned',
            'Partial Delivery'    => 'Partial Delivery',
            'On Hold'             => 'On Hold',
        ];

        $orderStatus = $statusMap[$event] ?? 'Unknown';

        $this->orderRepo->update($merchantOrderId, [
            'delivery_status' => $orderStatus,
            'third_party_delivery_tracking_id' => $trackingCode,
            'updated_at' => now(),
        ]);

        return response()->json(['status' => 'success', 'message' => 'Webhook received'], 202);
    }

    private function handleSteadfast(Request $request)
    {
        $notificationType = $request->input('notification_type');
        $invoice = $request->input('invoice');
        $status = $request->input('status'); // pending, delivered, partial_delivered, cancelled

        if (!$invoice) {
            return response()->json(['status' => 'error', 'message' => 'Missing invoice'], 400);
        }

        // Map Steadfast statuses to internal statuses
        $statusMap = [
            'pending'           => 'Pending',
            'delivered'         => 'Delivered',
            'partial_delivered' => 'Partial Delivery',
            'cancelled'         => 'Cancelled',
            'unknown'           => 'Unknown',
        ];

        $orderStatus = $statusMap[$status] ?? 'Unknown';

        $this->orderRepo->update($invoice, [
            'delivery_status' => $orderStatus,
            'updated_at' => now(),
        ]);

        return response()->json(['status' => 'success', 'message' => 'Webhook received successfully'], 200);
    }

    private function handleRedx(Request $request)
    {
        $trackingNumber = $request->input('tracking_number');
        $status = $request->input('status');
        $invoiceNumber = $request->input('invoice_number');

        if (!$invoiceNumber) {
            return response()->json(['status' => 'error', 'message' => 'Missing invoice_number'], 400);
        }

        // Map Redx statuses to internal statuses
        $statusMap = [
            'ready-for-delivery'       => 'Pending',
            'delivery-in-progress'     => 'In Transit',
            'delivered'                => 'Delivered',
            'agent-hold'               => 'On Hold',
            'agent-returning'          => 'Returning',
            'returned'                 => 'Returned',
            'agent-area-change'        => 'Area Change',
        ];

        $orderStatus = $statusMap[$status] ?? 'Unknown';

        $this->orderRepo->update($invoiceNumber, [
            'delivery_status' => $orderStatus,
            'third_party_delivery_tracking_id' => $trackingNumber,
            'updated_at' => now(),
        ]);

        return response()->json(['status' => 'success', 'message' => 'Webhook received successfully'], 200);
    }
}
