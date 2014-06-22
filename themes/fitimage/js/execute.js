//on document ready, as soon as it begins to load
$(function() {
    // Lungo.init();
    $(window).on("load", app.initialize);

    if (window.innerWidth >= 768) {
        $('.page-content').css('height', function() {
            var h = $(this).height();
            if (h < window.innerHeight) h = window.innerHeight;
            return h;
        });
    }

    var hidePageMenus = function(bool) {
        var density = bool == undefined ? 0.2 : 1;
        $('#ncc-page-bar').animate({
            opacity: density
        }, 100, 'linear', function() {
            $(this).mouseenter(function() {
                $(this).animate({
                    opacity: 1
                }, 100, 'linear');
            }).mouseleave(function() {
                $(this).animate({
                    opacity: density
                }, 100, 'linear');
            })
        });
        // $('#navigation-bar').slideToggle();
    }

    $(window).on("load", function() {
        if ($('body').hasClass('HomePage')) {
            setTimeout(hidePageMenus, 1000)
        };
    });

    //Resize the background image to the size of the body
    if ($('body').hasClass('HomePage') || $('body').hasClass('EventHolder') && window.innerWidth >= 768) {
        $('#page-header').height(function() {
            var h = parseInt($(window).width()) > 768 ? $('.homepage').height() * 1.1 : $(window).height() / 2;
            return h; //parseInt(h) + 1;
        });
    } else {
        // $('.page-menu').remove();
    }

    var once = 0;
    var windowAnimation = function() {
        $('.homepage').toggleClass('show-menu').css('background-color', function() {
            var h = $(this).height() + $(this).height() / 8;
            if (document.URL.indexOf('SearchForm') > -1 || window.innerWidth >= 768)
                if (once <= 0) {
                    // $('body').height(h);
                    once++
                }
            return $(this).css('background-color');
        });
        if (window.innerWidth >= 768) $('.toggle-menu-btn, .page-header').toggleClass('hide-page-header-items');
    }

    $('.toggle-menu-btn a, .row-close-btn button.close').on('click', function(e) {
        e.preventDefault();
        windowAnimation();
    });

    $('#toggle-email-form').click(function(e) {
        if (window.innerWidth >= 768) {
            e.preventDefault();
            $('.overlay.for-email').fadeToggle(function() {
                $('.email-form').toggleClass('show-email-form');
            });
        }
    });

    $('.email-form .close, .overlay.for-email').click(function() {
        $('.overlay.for-email').fadeToggle(function() {
            $('.email-form').toggleClass('show-email-form');
        });
    });

    //If the contact form gets submitted, trigger this by default
    if (document.URL.indexOf('ContactForm') > -1) {
        $('.show-menu').css('top', '10%');
        $('#toggle-email-form').click();
    }

    //the Homepage shares the template with: Searchform, Tenders, Events
    if (document.URL.indexOf('SearchForm') > -1 || document.URL.indexOf('happening') > -1) {
        windowAnimation();
    }

    //Adding Tiny MCE to TextArea
    // if (window.innerWidth >= 768 && $('body').hasClass('HomePage')) {
    //     $.getScript("//tinymce.cachefly.net/4.1/tinymce.min.js", function() {
    //         tinymce.init({
    //             selector: 'textarea'
    //         });
    //     })
    // }

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
        })

    }

    if ("fancybox" in jQuery) {
        $(".fancybox").attr('rel', 'gallery').fancybox({
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
    }

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