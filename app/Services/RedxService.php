<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Exception;

class RedxService
{
    private function formatPhone(string $phone): string
    {
        $phone = preg_replace('/\s+/', '', $phone);

        // Remove +88 or 88
        if (str_starts_with($phone, '+88')) {
            $phone = substr($phone, 3);
        } elseif (str_starts_with($phone, '88')) {
            $phone = substr($phone, 2);
        }

        // Must start with 01
        if (!str_starts_with($phone, '01')) {
            throw new Exception('Invalid Bangladeshi phone number for RedX');
        }

        return $phone; // RedX format
    }

    public function createParcel(array $data)
    {
        $redx = getWebConfig('redx');
        $payload = [
            'customer_name'          => $data['customer_name'],
            'customer_phone'         => $this->formatPhone($data['customer_phone']),
            'customer_address'       => $data['customer_address'],
            'delivery_area'          => $data['delivery_area'], // district name
            'delivery_area_id'       => 1, // REQUIRED RedX area ID (Dhaka default)
            'merchant_invoice_id'    => $data['merchant_invoice_id'],
            'cash_collection_amount' => (int) $data['cash_collection_amount'],
            'parcel_weight'          => (float) $data['parcel_weight'],
            'instruction'            => $data['instruction'] ?? '',
            'value'                  => (int) $data['cash_collection_amount'],
            'parcel_details_json'    => [
                [
                    'name'     => 'Order #' . $data['merchant_invoice_id'],
                    'category' => 'General',
                    'value'    => (int) $data['cash_collection_amount'],
                ]
            ],
        ];

        Log::info('RedX Payload', $payload);
        $url = 'https://openapi.redx.com.bd/v1.0.0-beta/parcel';

        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . $redx['jwt_token'],
            'Content-Type'  => 'application/json',
        ])->post($url, $payload);

        if (!$response->successful()) {
            Log::error('RedX Error', [
                'status' => $response->status(),
                'body'   => $response->body(),
            ]);
            throw new Exception('RedX parcel creation failed');
        }

        return $response->json();
    }
}
