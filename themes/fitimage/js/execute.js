//on document ready, as soon as it begins to load
$(function() {
    // Lungo.init();
    $(window).on("load", app.initialize);

    $('.page-content').css('height', function() {
        var h = $(this).height()
        if (h < window.innerHeight) {
            h = window.innerHeight
        }
        return h;
    })

    //Resize the background image to the size of the body
    if ($('body').hasClass('HomePage') && window.innerWidth >= 768) {
        $('#page-header').height(function() {
            var h = parseInt($(window).width()) > 768 ? $(document).height() : $(window).height() / 2;
            return h; //parseInt(h) + 1;
        });
    } else {
        // $('.page-menu').remove();
    }

    var windowAnimation = function() {
        $('.homepage').toggleClass('show-menu').css('background-color', function() {
            var h = $(this).height() + $(this).height() / 4
            if (document.URL.indexOf('SearchForm') > -1 || window.innerWidth >= 768) $('html, body').height(h);
            return $(this).css('background-color');
        });
        if (window.innerWidth >= 768) $(' .toggle-menu-btn, .page-header').toggleClass('hide-page-header-items');
    }

    $('.toggle-menu-btn a, button.close').on('click', function(e) {
        e.preventDefault();
        windowAnimation();
    });

    //the Homepage shares the template with: Searchform, Tenders, Events
    if (document.URL.indexOf('SearchForm') > -1 || document.URL.indexOf('opportunities') > -1 || document.URL.indexOf('happening') > -1) {
        windowAnimation();
    }

    // FIXED MENU CAUSEROL
    // Using default configuration
    $("#nav-menu").carouFredSel({
        width: '100%',
        responsive: true,
        scroll: 3,
        circular: true, //keep it rotating
        infinite: false,
        items: {
            visible: {
                min: 3,
                max: 6
            }
        },
        prev: '#nav-menu-prev',
        next: '#nav-menu-next',
        auto: {
            play: false
            //- pauseOnHover: 'resume'
        }
        //- pagination  : "#foo2_pag"
    });

    // The Clock
    setInterval(function() {
        $('.moment-in-time').html(function() {
            return moment().format('h:mm a');
        })
    }, 1000);

    if ($('.gallery-container').length >= 1) {

        $(window).on('load', function() {
            var container = $('.gallery-container');
            container.masonry({
                // options
                // containerStyle: null,
                itemSelector: '.image-container',
                isAnimated: true,
                columnWidth: container.children().width(),
                gutter: 0,
                isFitWidth: true
            });
            var msnry = container.data('masonry');
            console.log(msnry);

            $(".fancybox")
                .attr('rel', 'gallery')
                .fancybox({
                    padding: 0
                    // margin: 15,
                    // // nextEffect: 'fade',
                    // // prevEffect: 'none',
                    // autoCenter: false,
                    // afterLoad: function() {
                    //     $.extend(this, {
                    //         aspectRatio: false,
                    //         type: 'html',
                    //         width: '100%',
                    //         height: '100%',
                    //         content: '<div class="fancybox-image" style="background-image:url(' + this.href + '); background-size: cover; background-position:50% 50%;background-repeat:no-repeat;height:100%;width:100%;" /></div>'
                    //     });
                    // }
                });
        })

    }

    // $('body').flowtype({
    //     minimum: 400,
    //     maximum: 1900,
    //     minFont: 2,
    //     maxFont: 60,
    //     fontRatio: 90
    // });

    // Google Analytics: change UA-XXXXX-X to be your site's ID. 
    //- (function(b, o, i, l, e, r) {
    //-     b.GoogleAnalyticsObject = l;
    //-     b[l] || (b[l] =
    //-     function() {
    //-     (b[l].q = b[l].q || []).push(arguments)
    //-     });
    //-     b[l].l = +new Date;
    //-     e = o.createElement(i);
    //-     r = o.getElementsByTagName(i)[0];
    //-     e.src = '//www.google-analytics.com/analytics.js';
    //-     r.parentNode.insertBefore(e, r)
    //- }(window, document, 'script', 'ga'));
    //- ga('create', 'UA-XXXXX-X');
    //- ga('send', 'pageview');

});