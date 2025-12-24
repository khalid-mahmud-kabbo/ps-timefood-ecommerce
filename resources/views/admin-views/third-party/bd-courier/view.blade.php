@extends('layouts.admin.app')

@section('title', translate('social_Login'))

@section('content')
    <div class="content container-fluid">
        <div class="mb-3 mb-sm-20">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                {{ translate('3rd Party - Other Configurations') }}
            </h2>
        </div>
        @include('admin-views.third-party._third-party-others-menu')

      @php($bdcourier = getWebConfig('bdcourier'))
        <div class="card mb-3">
            <form action="{{ route('admin.third-party.bd-courier.update', ['bdcourier']) }}" method="post">
                @csrf
                <div class="card-header px-20 py-3">
                    <h2>{{ translate('BD_Courier_Configuration') }}</h2>
                    <p class="mb-0 fs-12">
                        {{ translate('setup_BD_Courier_to_track_fraud_and_analyze_orders') }}.
                    </p>
                </div>
                <div class="card-body">
                    <div class="d-flex flex-column gap-20">
                        <div class="card card-sm shadow-1">
                            <div class="card-body">
                                <div class="view-details-container">
                                    <div class="d-flex justify-content-between align-items-center gap-3">
                                        <div>
                                            <h3 class="mb-1">
                                                {{ translate('BD_Courier') }}
                                            </h3>
                                            <p class="mb-0 fs-12">
                                                {{ translate('provide_your_BD_Courier_API_key_and_api_url') }}
                                                .
                                            </p>
                                        </div>
                                        <div class="d-flex gap-2">
                                            <a href="javascript:"
                                               class="fs-12 fw-semibold d-flex align-items-end view-btn">
                                                {{ translate('View') }}
                                                <i class="fi fi-rr-arrow-small-down fs-16 trans3"></i>
                                            </a>
                                            <label class="switcher" for="whatsapp-id">
                                                <input
                                                    class="switcher_input custom-modal-plugin"
                                                    type="checkbox" value="1" name="status"
                                                    id="whatsapp-id"
                                                    data-modal-type="input-change"
                                                    data-on-image="{{ dynamicAsset(path: 'public/assets/new/back-end/img/modal/social/bd-courier.png') }}"
                                                    data-off-image="{{ dynamicAsset(path: 'public/assets/new/back-end/img/modal/social/bd-courier.png') }}"
                                                    data-on-title="{{ translate('want_to_turn_ON_BD_Courier_as_fraud_checking_option').'?'}}"
                                                    data-off-title="{{ translate('want_to_turn_OFF_BD_Courier_as_fraud_checking_option').'?'}}"
                                                    data-on-message="<p>{{ translate('if_enabled,bd_courier_option_will_be_available_in_the_system') }}</p>"
                                                    data-off-message="<p>{{ translate('if_enabled,bd_courier_option_will_be_unavailable_in_the_system') }}</p>"
                                                    data-on-button-text="{{ translate('turn_on') }}"
                                                    data-off-button-text="{{ translate('turn_off') }}">
                                                <span class="switcher_control"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="d--none view-details mt-3 mt-sm-4">
                                       
                                        <div class="p-12 p-sm-20 bg-section rounded">
                                                
                                            
                                            <div class="form-group">
                                                    <label class="form-label" for="">{{ translate('API_Key') }}
                                                    </label>

                                                    
                                                    <input type="text" id="api_key" name="api_key" class="form-control"
                                                           value="{{ $bdcourier['api_key'] }}"
                                                           placeholder="{{ translate('API_Key') }}">
                                                </div>

                                                 <div class="form-group">
                                                    <label class="form-label" for="">{{ translate('API_URL_ENDPOINT') }}</label>
                                                    <input type="text" id="api_url" name="api_url" class="form-control"
                                                           value="{{ $bdcourier['api_url'] }}"
                                                           placeholder="{{ translate('API_URL_ENDPOINT') }}">
                                                </div>




                                                <div class="d-flex justify-content-end flex-wrap gap-3">
                                                    <button type="reset"
                                                            class="btn btn-secondary w-120 px-4">{{ translate('reset') }}</button>
                                                    <button type="{{env('APP_MODE')!='demo'?'submit':'button'}}"
                                                            class="btn btn-primary w-120 px-4 {{env('APP_MODE')!= 'demo'? '' : 'call-demo-alert'}}"
                                                    >{{ translate('Update') }}</button>
                                                </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
