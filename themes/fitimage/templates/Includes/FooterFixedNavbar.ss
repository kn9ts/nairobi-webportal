<div role="nav-menu" data-part="fixed-footer-nav-menu" id="navigation-bar" class="row fixed-nav-bar bottom">
    <!--The menu icon-->
    <div class="col-xs-1 hidden-xs hidden-sm text-align-center">
        <a href="$BaseHref" class="yellow">
            <i class="fa fa-home fa-4x yellow"></i>
            <%-- <p class="no-margin no-padding yellow">Home</p> --%>
        </a>
    </div>
    <!-- Time and weather-->
    <div class="col-md-2 hidden-xs hidden-sm text-center yellow-bg">
        <h2 class="moment-in-time grey no-padding">The time is?</h2>
        <small class="grey uppercase">Local time</small>
    </div>
    <!-- The navigation menu-->
    <div class="col-sm-6 col-md-5 hidden-xs">
        <div class="row">
            <!-- Previous scroller-->
            <div class="col-xs-1">
                <p class="arrow">
                    <i id="nav-menu-prev" class="fa fa-angle-left fa-2x pull-left white-arrow">&nbsp;</i>
                </p>
            </div>
            <!-- The nav menu-->
            <div class="col-xs-10 uppercase">
                <div id="nav-menu" class="nav-menu text-align-center">
                <% with $Level(1) %>
                    <% loop $Children %>
                    <%-- <% if $ClassName = HomePageMenu %> --%>
                    <div class="nav-icon {$LinkingMode}">
                        <a href="$Link">
                            <i class="fa {$IconType} fa-2x"></i>
                            <p>$MenuTitle.XML</p>
                        </a>
                    </div>
                    <%-- <% end_if %> --%>
                    <% end_loop %>
                <% end_with %>
                </div>
            </div>
            <!-- Next Scroller-->
            <div class="col-xs-1">
                <p class="arrow">
                    <i id="nav-menu-next" class="fa fa-angle-right fa-2x pull-right white-arrow">&nbsp;</i>
                </p>
            </div>
        </div>
    </div>
    <!-- Emergency Services and social-icons-->
    <div class="col-sm-6 col-md-4">
        <div class="row inherit height">
            <div class="col-xs-6 col-sm-7 inherit height">
                <div id="social-icons">
                    <div class="row text-center">
                        <div class="col-xs-4">
                            <a class="blue" target="_blank" href="https://www.facebook.com/pages/Nairobi-City-County-Official/569756036404745">
                                <i class="fa fa-facebook-square fa-2x"></i>
                            </a>
                        </div>
                        <div class="col-xs-4">
                            <a class="blue" target="_blank" href="https://twitter.com/county_nairobi">
                                <i class="fa fa-twitter fa-2x"></i>
                            </a>
                        </div>
                        <div class="col-xs-4">
                            <a id="toggle-email-form" class="blue" target="_blank" href="#email-form">
                                <i class="fa fa-envelope fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
            <%-- EMERGENCIES LINK TAB --%>
            <div class="col-xs-6 col-sm-5 no-padding no-margin emergency-services-bar white">
                <a href="{$BaseHref}emergency-services" class="white">
                    <div class="row">
                        <div class="col-xs-4">
                            <i class="fa fa-bell fa-3x fa-borer">&nbsp;</i>
                        </div>
                        <div class="col-xs-8">
                            <p class="uppercase no-margin text-justify">
                                <span >Emergency Services</span>
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>