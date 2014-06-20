<!-- toggle menu button -->
<div class="row toggle-menu-btn hidden-xs">
    <div class="col-xs-1">&nbsp;</div>
    <div class="col-half">&nbsp;</div>
    <div class="col-xs-1 col-sm-2">
        <a class="btn btn-md text-center">
            <h3 class="no-padding">menu</h3>
            <i class="fa fa-th fa-1x">&nbsp;</i>
        </a>
        <%-- <h4 class="white text-center pull-left">Welcome to Nairobi City County. How can we help you?</h4> --%>
    </div>
    <div class="col-sm-5 col-md-5">
        <h4 class="text-center grey-bg padding-xs white">Welcome to Nairobi City County Web Portal.</h4>
    </div>
</div>

<!-- Homepage main navbar -->
<div role="header" data-part="site-header" id="page-header" class="row page-header-bar">
    <!-- THE LOGO HEADER STARTS HERE -->
    <div class="col-xs-12 page-header" id="ncc-page-bar">
        <div class="container">
            <!-- ncc logo header -->
            <div class="row space header-bg">

                <div class="col-half hidden-xs">&nbsp;</div>
                
                <!-- NCC HEADER LOGO -->
                <div class="col-xs-6 col-sm-3 col-md-3 col-lg-2 ncc-logo">
                    <img src="{$ThemeDir}/images/ncclogo.png" alt="NCC logo" class="img-responsive white-bg">
                </div>

                <!-- Others: NCC Abbr, Login and gallery links -->
                <div class="header-menu col-xs-6 col-sm-8 col-md-8 col-lg-9 white-bg">
                    <div class="row text-center">
                        
                        <div class="col-xs-12 col-sm-5 white-bg">
                            <h1 class="no-padding no-margin blue">
                                NAIROBI CITY COUNTY
                            </h1>
                            <small class="no-padding no-margin green lead text-left">$SiteConfig.Tagline</small>
                        </div>

                        <a href="{$BaseHref}about-the-county/">
                            <div class="col-xs-3 grey-bg hidden-xs about">
                                <h3 class="icon-login white padding-top">About NCC &nbsp;<i class="fa fa-info-circle fa-1x"></i></h3>
                            </div>
                        </a>
                        
                        <a href="{$BaseHref}home/explore-nairobi">
                            <div class="col-xs-3 yellow-bg hidden-xs see">
                                <h3 class="icon-gallery grey padding-top">Explore City&nbsp;<i class="fa fa-th fa-1x"></i></h3>
                            </div>
                         </a>
                        <%-- <div class="col-xs-1 invisible opacity"></div> --%>
                    </div>
                </div>
                <%-- <% end_if %> --%>
            </div>
        </div>
    </div>
</div>