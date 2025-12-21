@php($overallRating = getOverallRating($product->reviews))

<div class="product-single-hover style--card">
    <div class="overflow-hidden position-relative">
        <div class=" inline_product clickable d-flex justify-content-center">
            @if(getProductPriceByType(product: $product, type: 'discount', result: 'value') > 0)
                <div class="d-flex">
                    <span class="for-discount-value p-1 pl-2 pr-2 font-bold fs-13">
                        <span class="direction-ltr d-block">
                            -{{ getProductPriceByType(product: $product, type: 'discount', result: 'string') }}
                        </span>
                    </span>
                </div>
            @else
                <div class="d-flex justify-content-end">
                    <span class="for-discount-value-null"></span>
                </div>
            @endif
            <div class="p-10px pb-0">
                <a href="{{route('product',$product->slug)}}" class="w-100">
                    <img alt=""
                         src="{{ getStorageImages(path: $product->thumbnail_full_url, type: 'product') }}">
                </a>
            </div>

            <div class="quick-view">
                <a class="btn-circle stopPropagation action-product-quick-view" href="javascript:" data-product-id="{{ $product->id }}">
                    <i class="czi-eye align-middle"></i>
                </a>
            </div>
            @if($product->product_type == 'physical' && $product->current_stock <= 0)
                <span class="out_fo_stock">{{translate('out_of_stock')}}</span>
            @endif
        </div>
        <div class="single-product-details">
            @if($overallRating[0] != 0 )
                <div class="rating-show justify-content-between text-center">
                    <span class="d-inline-block font-size-sm text-body">
                        @for($inc=1;$inc<=5;$inc++)
                            @if ($inc <= (int)$overallRating[0])
                                <i class="tio-star text-warning"></i>
                            @elseif ($overallRating[0] != 0 && $inc <= (int)$overallRating[0] + 1.1 && $overallRating[0] > ((int)$overallRating[0]))
                                <i class="tio-star-half text-warning"></i>
                            @else
                                <i class="tio-star-outlined text-warning"></i>
                            @endif
                        @endfor
                        <label class="badge-style">( {{ count($product->reviews) }} )</label>
                    </span>
                </div>
            @endif
            <h3 class="text-center mb-1 letter-spacing-0">
                <a href="{{route('product',$product->slug)}}">
                    {{ $product['name'] }}
                </a>
            </h3>
            <div class="justify-content-between text-center">
                <h4 class="product-price text-center d-flex flex-wrap justify-content-center align-items-center gap-8 mb-0 letter-spacing-0">
                    @if(getProductPriceByType(product: $product, type: 'discount', result: 'value') > 0)
                        <del class="category-single-product-price">
                            {{ webCurrencyConverter(amount: $product->unit_price) }}
                        </del>
                    @endif
                    <span class="text-accent text-dark">
                        {{ getProductPriceByType(product: $product, type: 'discounted_unit_price', result: 'string') }}
                    </span>
                </h4>


                <form class="mb-2 addToCartDynamicForm add-to-cart-details-form-{{ $product->id }}" id="add-to-cart-form-{{ $product->id }}">
                    @csrf
                    <input type="hidden" name="id" value="{{ $product->id }}">
                    
                    <input type="hidden" name="quantity" 
                           value="{{ $product->minimum_order_qty ?? 1 }}"
                           data-producttype="{{ $product->product_type }}"
                           min="{{ $product->minimum_order_qty ?? 1 }}"
                           max="{{$product['product_type'] == 'physical' ? $product->current_stock : 100}}">
                    
                    <input type="hidden" class="product-generated-variation-code" name="product_variation_code" data-product-id="{{ $product['id'] }}">
                    <input type="hidden" value="" class="product-exist-in-cart-list form-control" name="key">

                    @if (count(json_decode($product->colors)) > 0)
                        @foreach (json_decode($product->colors) as $key => $color)
                            <input type="radio"
                                   name="color" 
                                   value="{{ $color }}"
                                   @if($key == 0) checked @endif 
                                   hidden> 
                        @endforeach
                    @endif

                    @foreach (json_decode($product->choice_options) as $key => $choice)
                        @foreach ($choice->options as $index => $option)
                            <input type="radio" name="{{ $choice->name }}" value="{{ $option }}" @if($index == 0) checked @endif hidden>
                        @endforeach
                    @endforeach

                    <div class="__btn-grp mt-2 mb-3 product-add-and-buy-section-parent justify-content-center">
                        @if($product->product_type == 'physical' && $product->current_stock <= 0)
                            <button type="button" class="btn btn-outline-primary fw-semibold" disabled>
                                {{ translate('stock_out') }}
                            </button>
                        @else
                            <div class="product-add-and-buy-section gap-2 d-flex">
                                <button type="button" 
                                        class="btn btn-secondary element-center product-buy-now-button"
                                        data-form=".add-to-cart-details-form-{{ $product->id }}"
                                        data-auth="{{( getWebConfig(name: 'guest_checkout') == 1 || Auth::guard('customer')->check() ? 'true':'false')}}"
                                        data-route="{{route('checkout-details') }}">
                                    <span class="string-limit">{{ translate('buy_now') }}</span>
                                </button>


                                 <button type="button" 
                                        class="btn btn--primary element-center product-buy-now-button"
                                        data-form=".add-to-cart-details-form-{{ $product->id }}"
                                        data-auth="{{( getWebConfig(name: 'guest_checkout') == 1 || Auth::guard('customer')->check() ? 'true':'false')}}"
                                        data-route="{{route('checkout-details') }}">
                                    <span class="string-limit">{{ translate('add_to_cart') }}</span>
                                </button>
                                
            



                            </div>
                        @endif
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>