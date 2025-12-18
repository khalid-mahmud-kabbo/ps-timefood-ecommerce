@php use Illuminate\Support\Str; @endphp
@extends('layouts.admin.app')

@section('title', translate('draft_customer_List'))

@section('content')
    <div class="content container-fluid">
        <div class="mb-4">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{dynamicAsset(path: 'public/assets/back-end/img/customer.png')}}" alt="">
                {{translate('draft_customer_List')}}
                <span class="badge badge-soft-dark radius-50">{{ $totalCustomers }}</span>
            </h2>
        </div>

        <div class="card">
            <div class="card-body">
                <div class="d-flex flex-wrap justify-content-between gap-3 align-items-center mb-4">
                    <h3 class="mb-0">
                        {{translate('draft_customer_List')}}
                        <span class="badge badge-info text-bg-info">{{ $totalCustomers }}</span>
                    </h3>
                </div>
                <div class="table-responsive datatable-custom">
                    <table class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100">
                        <thead class="thead-light thead-50 text-capitalize">
                            <tr>
                                <th>{{translate('SL')}}</th>
                                <th>{{translate('customer_name')}}</th>
                                <th>{{translate('contact_info')}}</th>
                                <th>{{translate('address')}} </th>
                                <th class="text-center">{{translate('action')}}</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($draft_customers as $key=>$customer)
                            <tr>
                                <td>
                                    {{$draft_customers->firstItem()+$key}}
                                </td>
                                <td>
                                    <a href="#"
                                    class="text-dark text-hover-primary d-flex align-items-center gap-10">
                                        <img src="{{getStorageImages(path:$customer->image_full_url,type:'backend-profile')}}"
                                            class="avatar rounded-circle " alt="" width="40">
                                        {{$customer->name}}
                                    </a>
                                </td>
                                <td>
                                    <div class="mb-1">
                                        <strong><a class="text-dark text-hover-primary"
                                                href="mailto:{{$customer->email}}">{{$customer->email}}</a></strong>

                                    </div>
                                    <a class="text-dark text-hover-primary" href="tel:{{$customer->phone}}">{{$customer->phone}}</a>

                                </td>
                                <td>
                                    <label class="text-dark text-hover-primary">
                                        {{$customer->address ?? 'No Address Found'}}
                                    </label>
                                </td>


                                <td>
                                    <div class="d-flex justify-content-center gap-2">
                                        @if($customer['id'] != '0')
                                            <a title="{{translate('delete')}}"
                                            class="btn btn-outline-danger delete icon-btn delete-data" href="javascript:"
                                            data-id="customer-{{$customer['id']}}">
                                            <i class="fi fi-rr-trash"></i>
                                            </a>
                                        @endif
                                    </div>
                                    <form action="{{route('admin.customer.deleteDraft',[$customer['id']])}}"
                                        method="post" id="customer-{{$customer['id']}}">
                                        @csrf @method('delete')
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="table-responsive mt-4">
                    <div class="px-4 d-flex justify-content-lg-end">
                        {!! $draft_customers->links() !!}
                    </div>
                </div>
                @if(count($draft_customers)==0)
                    @include('layouts.admin.partials._empty-state',['text'=>'no_customer_found'],['image'=>'default'])
                @endif
            </div>
    </div>
    </div>
@endsection

@push('script')
    <script type="text/javascript">
        changeInputTypeForDateRangePicker($('input[name="order_date"]'));
        changeInputTypeForDateRangePicker($('input[name="customer_joining_date"]'));
    </script>
@endpush
