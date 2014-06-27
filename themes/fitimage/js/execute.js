//on document ready, as soon as it begins to load
$(function() {
    // Lungo.init();
    $(window).on("load", app.initialize);

    if (window.innerWidth >= 768) {
        if($('body').hasClass('EventHolder')) {
            $('.page-content').css('height', function() {
                var h = $(this).height();
                if (h < window.innerHeight) h = window.innerHeight;
                return h;
            });
        }

        $('.email-form, .homepage').hide()

        //Resize the background image to the size of the body
        if ($('body').hasClass('HomePage') || $('body').hasClass('EventHolder')) {
            $('#page-header').height(function() {
                var h = window.innerWidth > 768 ? $('.homepage').height() * 1.1 : $(window).height() / 2;
                // $('html, body').height(window.innerHeight * 1.5).css('overflow', 'hidden');
                return h; //parseInt(h) + 1;
            });
        } else {
            // $('.page-menu').remove();
        }

        // THE SIDE MENU ON LARGE SCREENS
        if ($.inArray($('body').attr('class'), ['SectionPage', 'CityBylawsPage', 'CountyOperationsPage']) > -1) {
            $('body .container-fluid').first().find('h2').each(function(index) {
                //Check to see if the H2 already has an ID
                var h2id = $(this).attr('id') !== undefined ? $(this).attr('id') : 'h2_0' + index;
                var h2title = $(this).text();
                //If the H2 did not have an ID, give it one
                if ($(this).attr('id') == undefined) $(this).attr('id', h2id); // id="h2_01"
                $('.SN_anchors').prepend('<p class="SN-link"><a href="' + document.URL + '#' + h2id + '" title="' + h2title + '">' + h2title + '</a></p>');
            });
            setTimeout(function() {
                $('.menu-slidein-sidebar').removeClass('hidden');
            }, 500);
        }
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

        //Slide Down the notification bar if it exists
        if ($('.notification-bar')) {
            setTimeout(function() {
                $('.notification-bar').removeClass('hidden').slideDown().on("click", '.close', function() {
                    $(this).parent().slideUp();
                });
            }, 3000);
        }
    });

    // Hide the notification bar on page load
    $('.notification-bar').hide();
    setInterval(function() {
        $('.notification-bar').slideToggle(function() {
            // Do something
        })
    }, 25000);

    var once = 0;
    var windowAnimation = function() {
        $('.homepage').show(function() {
            $(this).toggleClass('show-menu');
            var h = $(this).height() + $(this).height() / 8;
            if (document.URL.indexOf('SearchForm') > -1 || window.innerWidth >= 768)
                if (once <= 0) {
                    // $('body').height(h);
                    once++
                }
            if(!$(this).hasClass('show-menu')) setTimeout(function() { 
                $('.homepage').hide();
            }, 1000);
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
                $('.email-form').show(function() {
                    $(this).toggleClass('show-email-form');
                    if(!$(this).hasClass('show-email-form')) $(this).hide();
                    return $(this).css('background-color');
                });
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