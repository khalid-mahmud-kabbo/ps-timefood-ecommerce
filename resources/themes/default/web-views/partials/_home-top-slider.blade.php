@if(count($bannerTypeMainBanner) > 0)
<section class="bg-transparent">
    <div class="position-relative">
        <div class="row no-gutters position-relative rtl">
            <div class="col-12 col-xl-12 ">
                <div>
                    <div class="owl-theme owl-carousel hero-slider" data-loop="{{ count($bannerTypeMainBanner) > 1 ? 1 : 0 }}">
                        @foreach($bannerTypeMainBanner as $key=>$banner)
                            <a href="{{$banner['url']}}" class="d-block" target="_blank">
                                <img class="w-100 __slide-img __slide-img-170" alt=""
                                    src="{{ getStorageImages(path: $banner->photo_full_url, type: 'banner') }}">
                            </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endif