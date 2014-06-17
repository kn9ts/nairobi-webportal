/**
 *
 *@Author - Eugene Mutai
 *@Twitter - JheneKnights
 *
 * Date: 1/26/13
 * Time: 12:47 PM
 * Description: A simple slideshow plug-in made by I, Hello Kitty Logod
 *
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.opensource.org/licenses/gpl-2.0.php
 *
 * Copyright (C) 2013
 * @Version -
 */


(function($) {

    $.simple = $.simple || {}

    $.fn.extend({

        helloKitty: function(options) {

            var slideWrapper = $(this); // class="slideshow"

            var defaultOptions = {
                width: 800,
                height: 300,
                duration: 3000,
                element: slideWrapper.children('div')
            };

            var use = $.extend({}, defaultOptions, options);

            use.width = $.inArray(['100%', 'full', 'wide', 'responsive', 100], use.width) ? slideWrapper.parent().width() : use.width;

            var mainStyling = {
                width: use.width,
                overflow: "hidden",
                height: use.height,
                position: "relative",
                margin: "auto"
            };

            var slidepanelStyling = {
                width: (use.width * slideWrapper.children('div').children().length),
                position: "relative",
                top: 0,
                left: 0,
                "z-index": 99
            };
            
            var slidesStyling = {
                float: "left",
                width: use.width,
                position: "relative"
            };

            // // +++++ CSS Style assignment and Image resizing done here ++++++
            // slideWrapper.css(mainStyling).children('div').css(slidepanelStyling).children().each(function() {
            //     var imageDiv = $(this);
            //     imageDiv.css(slidesStyling);
            //     // get the image
            //     if (imageDiv.children('img')) {
            //         // Assign the image the full width & height of it's parent width -- <div>
            //         imageDiv.children('img').css({
            //             width: use.width,
            //             height: use.height
            //         });
            //     }
            // });

            // Slideshow LOGO
            var kittyKat = '<img src="http://4.bp.blogspot.com/-Qg-KXumXktc/T2rckt3hV8I/AAAAAAAAB5w/vwaLDOtbAJ8/s1600/Hello-Kitty-psd26128.J%C2%A9.png" title="A personalised slideshow plug-in built by Eugene Mutai. Web Application Developer and Designer. Email me at -- eugenemutai@gmail.com" style="position: absolute; bottom: 20px; right: 10px; z-index: 166; width:30px; opacity: 0.3">'
            slideWrapper.append('<div style="clear: both"></div>') //.prepend(kittyKat)

            // Get the total width of the slideshow
            var numberofPanels = slideWrapper.children('div').children().length;
            var theEndofTheSlideshow = -(slidepanelStyling.width);

            var totalMovingDistance = numberofPanels * use.width;
            //$(".slideshow").css("width", totalMovingDistance);

            // Initialise it -- autoplay
            sliderIntervalID = setInterval(function() {
                //console.log(panelWidth + ' -- ' + theEndofTheSlideshow)
                startSlideSimple(use.element, use.width, theEndofTheSlideshow);
            }, use.duration);

            // PAUSE THE SLIDESHOW ON-MOUSEOVER
            // use.element.on({
            //     mouseover: function() {
            //         clearInterval(sliderIntervalID);
            //     },
            //     mouseout: function() {
            //         sliderIntervalID = setInterval(function() {
            //             //console.log(panelWidth + ' -- ' + theEndofTheSlideshow)
            //             startSlideSimple(use.element, use.width, theEndofTheSlideshow);
            //         }, use.duration * 3);
            //     }
            // })

            $.simple.width = use.width;
            $.simple.toofar = theEndofTheSlideshow;
            $.simple.el = use.element;
            $.simple.maximumMovingWidth = theEndofTheSlideshow + use.width;

            //now tag the element needed to the slider movement
            if(use.pointers) sliderMovement(use.pointers);
        }

    }),

    // THE MOVEMENT ENGINE
    startSlideSimple = function(el, panelWidth, theEndofTheSlideshow) {
        var leftValue = el.css("left");

        // Fix for IE
        if (leftValue == "auto") leftValue = 0;

        var movement = parseFloat(leftValue, 10) - panelWidth;
        if (movement == theEndofTheSlideshow) {
            el.animate({
                left: 0
            })
        } else {
            el.animate({
                left: movement
            })
        }
    },

    // ++++ USING DIRECTION ELEMENTS ++++++
    sliderMovement = function(el) {
        el.on('click', 'div', function() {
            var dir = $(this).data('move'),
                move;
            switch (dir) {
                case "left":
                    move = parseInt($.simple.el.css('left')) + $.simple.width;
                    move = move > 0 ? 0 : move;
                    // console.log(move, $.simple.el.css('left'), $.simple.width, $.simple.toofar);
                    $.simple.el.animate({
                        left: move
                    }, 600);
                    break;
                case "right":
                    move = parseInt($.simple.el.css('left')) - $.simple.width;
                    move = move < $.simple.maximumMovingWidth ? $.simple.maximumMovingWidth : move;
                    // console.log(move, $.simple.width, $.simple.toofar);
                    $.simple.el.animate({
                        left: move
                    }, 600);
                    break;
            }
        });
    }

})(jQuery)