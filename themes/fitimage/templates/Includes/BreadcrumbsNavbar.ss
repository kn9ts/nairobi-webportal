<div data-part="breadcrumbs-navbar" id="helper-navbar" class="row fixed-nav-bar top breadcrumbs-navbar">
    <div class="col-xs-12 welcome-nav">
        <div class="row">
            <div class="col-xs-offset-1 col-xs-12 col-sm-8 col-md-8 col-lg-8">
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
            <%-- <div class="hidden-xs hidden-sm col-md-5">
                <h5 class="white text-center">&nbsp;</h5>
            </div> --%>

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