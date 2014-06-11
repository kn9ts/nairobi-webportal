<div data-part="breadcrumbs-navbar" id="helper-navbar" class="row fixed-nav-bar top breadcrumbs-navbar">
    <div class="col-xs-12 welcome-nav">
        <div class="row">
            <div class="col-xs-offset-1 col-xs-12 col-md-6 col-lg-6">
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
            <div class="hidden-xs hidden-sm col-md-5">
                <h5 class="white text-center">&nbsp;</h5>
            </div>
        </div>
    </div>
</div>