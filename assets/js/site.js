
;(function () {
    "use strict"; // use strict to start
    $(document).ready(function () {
        /* === Preloader === */
        $("#preloader").delay(250).fadeOut("slow");
        /* === Search === */
        (function () {
            $('.search-trigger').on('click', function (e) {
                $('body').addClass('active-search');
            });
            $('.search-close').on('click', function (e) {
                $('body').removeClass('active-search');
            });
        }());
        /* === Full Screen Banner === */
        $(window).on('resizeEnd', function () {
            $(".fullscreen-banner").height($(window).height());
        });
        $(window).resize(function () {
            if (this.resizeTO) clearTimeout(this.resizeTO);
            this.resizeTO = setTimeout(function () {
                $(this).trigger('resizeEnd');
            }, 300);
        }).trigger("resize");
        /* === Tab to Collapse === */
        if ($('.nav-tabs').length > 0) {
           $('.nav-tabs').tabCollapse();
        }
        /* === Detect IE version === */
        (function () {
            function getIEVersion() {
                var match = navigator.userAgent.match(/(?:MSIE |Trident\/.*; rv:)(\d+)/);
                return match ? parseInt(match[1], 10) : false;
            }
            if( getIEVersion() ){
                $('html').addClass('ie'+getIEVersion());
            }
        }());
        /* === Counter === */
        $('.counter-section').on('inview', function(event, visible, visiblePartX, visiblePartY) {
            if (visible) {
                $(this).find('.timer').each(function () {
                    var $this = $(this);
                    $({ Counter: 0 }).animate({ Counter: $this.text() }, {
                        duration: 2000,
                        easing: 'swing',
                        step: function () {
                            $this.text(Math.ceil(this.Counter));
                        }
                    });
                });
                $(this).off('inview');
            }
        });
        /* === CountDown === */
        if ($('.countdown').length > 0) {
            $(".countdown").countdown({
                date: "31 december 2017 12:00:00",
                format: "on"
            });
        }
        /* === magnificPopup === */
        if ($('.tt-lightbox').length > 0) {
            $('.tt-lightbox').magnificPopup({
                type: 'image',
                mainClass: 'mfp-fade',
                removalDelay: 160,
                fixedContentPos: false
                // other options
            });
        }
        /* === Gallery Thumb Carousel === */
        if ($('.gallery-thumb').length > 0) {
            $('.gallery-thumb').flexslider({
                animation: "slide",
                controlNav: "thumbnails",
            });

        }
        /* === Circle Thumb Testimonial === */
        if ($('.circle-thumb').length > 0) {
            $('.circle-thumb').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        }
        /* === Square Thumb Testimonial === */
        if ($('.square-thumb').length > 0) {
            $('.square-thumb').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        }
        /* === Logo Thumb Testimonial === */
        if ($('.logo-thumb').length > 0) {
            $('.logo-thumb').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        }
        /* === Logo Thumb Right Testimonial === */
        if ($('.logo-thumb-right').length > 0) {
            $('.logo-thumb-right').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        }
        /* === Parallax Testimonial on agency demo === */
        if ($('.parallax-carousel').length > 0) {
            $('.parallax-carousel').flexslider({
                animation: "slide"
            });
        }
        /* === Featured item carousel === */
        if ($('.featured-carousel').length > 0) {
            $('.featured-carousel').owlCarousel({
                loop:true,
                margin:12,
                responsive:{
                    0:{
                        items:1
                    },
                    600:{
                        items:2
                    },
                    1000:{
                        items:3
                    }
                }
            });
        }
        /* === blogGrid === */
        if ($('#blogGrid').length > 0) {
            var $grid = $('#blogGrid').imagesLoaded( function() {
              // init Masonry after all images have loaded
              $grid.masonry({
                itemSelector: '.blog-grid-item',
              });
            });
        }
        /* === Progress Bar === */
        $('.progress').on('inview', function(event, visible, visiblePartX, visiblePartY) {
            if (visible) {
                $.each($('div.progress-bar'),function(){
                    $(this).css('width', $(this).attr('aria-valuenow')+'%');
                });
                $(this).off('inview');
            }
        });
        /* ======= Contact Form ======= */
        $('#contactForm').on('submit',function(e){
            e.preventDefault();
            var $action = $(this).prop('action');
            var $data = $(this).serialize();
            var $this = $(this);
            $this.prevAll('.alert').remove();
            $.post( $action, $data, function( data ) {
                if( data.response=='error' ){
                    $this.before( '<div class="alert danger-border"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button> <i class="fa fa-times-circle"></i> '+data.message+'</div>' );
                }
                if( data.response=='success' ){
                    $this.before( '<div class="alert success-border"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><i class="fa fa-thumbs-o-up"></i> '+data.message+'</div>' );
                    $this.find('input, textarea').val('');
                }
            }, "json");
        });
        /* ======= Stellar for background scrolling ======= */
        if ($('.parallax-bg').length > 0) {
            $('.parallax-bg').imagesLoaded( function() {
                $(window).stellar({
                    horizontalScrolling: false,
                    verticalOffset: 0,
                    horizontalOffset: 0,
                    responsive: true,
                    hideDistantElements: true
                });
            });
        }
        /* ======= shuffle js ======= */
        $(window).on('load', function () {
            $('.portfolio-container').each(function(i, e){
                var ttGrid = $(this).find('.portfolio');
                var self = this;
                ttGrid.shuffle({
                    itemSelector: '.portfolio-item' // the selector for the items in the grid
                });
                /* reshuffle when user clicks button filter item */
                $(this).find('.portfolio-filter li').on('click',function (e) {
                    e.preventDefault();
                    // set active class
                    $(self).find('.portfolio-filter li').removeClass('active');
                    $(this).addClass('active');
                    // get group name from clicked item
                    var ttGroupName = $(this).attr('data-group');
                    // reshuffle grid
                    ttGrid.shuffle('shuffle', ttGroupName);
                });
            });
        });


        /* ======= Portfolio Slider ======= */
        $(window).on('load', function () {
            if ($('.portfolio-slider').length > 0) {
                $('.portfolio-wrapper').each(function(i, e){
                    var ttPortfolio = $(this).find('.portfolio-slider');
                    var ttDirection = ttPortfolio.attr('data-direction');
                    ttPortfolio.flexslider({
                        animation: "slide",
                        direction: ttDirection,
                        slideshowSpeed: 3000,
                        start:function(){
                            imagesLoaded($(".portfolio"),function(){
                                setTimeout(function(){
                                    $('.portfolio-filter li:eq(0)').trigger("click");
                                },500);
                            });
                        }
                    });
                });
            }
        });

        /* ======= Portfolio Individual Gallery ======= */
        $('.portfolio-slider').each(function () {
            var _items = $(this).find("li > a");
            var items = [];
            for (var i = 0; i < _items.length; i++) {
                items.push({src: $(_items[i]).attr("href"), title: $(_items[i]).attr("title")});
            }
            $(this).parent().find(".action-btn").magnificPopup({
                items: items,
                type: 'image',
                mainClass: 'mfp-fade',
                removalDelay: 160,
                fixedContentPos: false,
                gallery: {
                    enabled: true
                }
            });
        });

    });


})(jQuery);

$(window).bind("load", function () {
    $('#work-in-progress').fadeOut(900);
});

