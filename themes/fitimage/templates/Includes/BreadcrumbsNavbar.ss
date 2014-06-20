<div data-part="breadcrumbs-navbar" id="helper-navbar" class="row fixed-nav-bar top breadcrumbs-navbar">
    <div class="col-xs-12 welcome-nav">
        <div class="row">
            <div class="col-xs-1 hidden-xs">&nbsp;</div>
            <div class="col-xs-12 col-sm-9">
                <div class="container">
                    <% if $ClassName = GalleryPage %>
                    <a href="$BaseHref">
                        <h4 class="no-padding no-margin">
                            <i class="fa fa-home vertical-align">&nbsp;</i> Home
                        </h4>
                    </a>
                    <% end_if %>
                    <%-- $Breadcrumbs --%>
                    <%-- <h5 class="yellow">
                        <i class="fa fa-arrow-down fa-2x">&nbsp;</i>Hide menu &amp; see Nairobi.
                    </h5> --%>
                    <%-- <% if $ClassName = BlogEntry || $ClassName = SectionPage %> --%>
                    <small class="no-padding no-margin bread">$Breadcrumbs</small>
                    <%-- <% end_if %> --%>
                </div>
            </div>
            
            <% if $ClassName = SectionPage %>
            <div class="hidden-xs hidden-sm col-md-2 gallery-link">
                <a href="{$BaseHref}see-nairobi">
                <div class="row">
                    <div class="col-xs-2">&nbsp;</div>
                    <div class="col-xs-10 green-bg white">
                        <div class="row">
                            <div class="col-xs-1"></div>
                            <div class="col-xs-3">
                                <i class="fa fa-camera-retro fa-3x fa-borer">&nbsp;</i>
                            </div>
                            <div class="col-xs-8">
                                <p class="uppercase no-margin text-justify">
                                    <span >Open<br> Gallery</span>
                                </p>
                            </div>
                        </div>
                        <%-- <a href="{$BaseHref}see-nairobi">
                            <i class="fa fa-camera-retro fa-2x">&nbsp;</i>
                            <h4 class="white text-justify no-margin uppercase">
                                 View Gallery
                            </h4>
                        </a> --%>                        
                    </div>
                </div>
                </a>
            </div>
            <% end_if %>

            <%-- If social icons are moved to the top --%>
            <%-- <div class="hidden-xs col-sm-3 inherit-height">
                <div id="social-icons">
                    <div class="row text-center no-padding">
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
                            <a class="blue" target="_blank" href="mailto:info@nairobi.go.ke">
                                <i class="fa fa-envelope fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div> --%>
        </div>
    </div>
</div>