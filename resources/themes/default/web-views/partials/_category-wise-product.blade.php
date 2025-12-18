@if (count($category['products']) > 0)
<div class="container pt-4 rtl px-0 px-md-3 mt-5">
        <div class="align-items-baseline mb-14px">
                    <h2 class="text-center mb-0">
                    <span class="for-feature-title __text-22px font-bold text-center">
                        {{$category['name']}}
                    </span>
                    </h2>
                    
                </div>
            <div class="row mt-0 g-2">
                @foreach($category['products'] as $key=>$product)
                <div class="col-xl-3 col-sm-4 col-md-6 col-lg-4 col-6">
                    <div>
                       

                    @include('web-views.partials._category-single-product', ['product'=>$product])


                        
                    </div>
                </div>
                @endforeach
            </div>
            <div class="text-center product-add-and-buy-section mt-3">
                        <a type="button" href="{{route('products',['category_id'=> $category['id'],'data_from'=>'category','page'=>1])}}" class="btn btn-secondary element-center justify-content-center m-auto" style="width: 10%;">
                         <span class="string-limit">{{ translate('view_all') }}</span>
                         <i class="czi-arrow-{{Session::get('direction') === "rtl" ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                    </a>
                    </div>
        </div>
@endif