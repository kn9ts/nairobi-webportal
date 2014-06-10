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
        <h4 class="white text-center">Welcome to Nairobi City County. How can we help you?</h4>
    </div>
</div>

<div role="header" data-part="site-header" id="page-header" class="row page-header-bar">
    <!-- THE LOGO HEADER STARTS HERE -->
    <div class="col-xs-12 page-header">
        <div class="container">
            <!-- ncc logo header -->
            <div class="row space header-bg">

                <div class="col-half hidden-xs">&nbsp;</div>
                
                <!-- NCC HEADER LOGO -->
                <div class="col-xs-6 col-sm-3 col-md-3 col-lg-2 ncc-logo">
                    <img src="{$ThemeDir}/images/ncclogo.png" alt="NCC logo" class="img-responsive white-bg">
                </div>

                <%-- <% if $ClassName = BlogEntry || $ClassName = SectionPage %>
                <style type="text/css">
                    #page-header {
                    <% if $backgroundImage %>
                        background: url("$backgroundImage.getAbsoluteURL()");
                    <% else %>
                        background: url("{$ThemeDir}/images/ten.jpg");
                    <% end_if %>
                        background-position: center 30%;
                    }
                </style>

                <!-- Others: Blog header, replacing NCC header and bg image -->
                <div class="col-xs-8 col-md-9 col-lg-10">
                    <div class="row text-center blog-header">
                        <h3 class="white"><strong>$MenuTitle</strong></h3>
                        <% if $ClassName = BlogEntry %>
                        <h3 class="no-padding no-margin green">
                            <% _t('BlogEntry_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogEntry_ss.POSTEDON', 'on') %> $Date.Long
                        </h3>
                        <% else_if $ClassName = SectionPage %>
                        <h3 class="green">{$Description}</h3>
                        <% end_if %>
                    </div>
                </div>
                <% else %> --%>

                <!-- Others: NCC Abbr, Login and gallery links -->
                <div class="header-menu col-xs-6 col-sm-8 col-md-8 col-lg-9 white-bg">
                    <div class="row text-align-center">
                        
                        <div class="col-xs-12 col-sm-5 white-bg">
                            <h1 class="no-padding no-margin blue">
                                NAIROBI CITY COUNTY
                            </h1>
                            <small class="no-padding no-margin green lead">$SiteConfig.Tagline</small>
                        </div>
                        <div class="col-xs-3 grey-bg hidden-xs">
                            <a href="{$BaseHref}/about-the-county/">
                                <h3 class="icon-login">About NCC &nbsp;<i class="fa fa-arrow-right fa-1x"></i></h3>
                            </a>
                        </div>
                        <div class="col-xs-3 yellow-bg hidden-xs">
                            <a href="{$BaseHref}see-nairobi">
                                <h3 class="icon-gallery">See Nairobi &nbsp;<i class="fa fa-th fa-1x"></i></h3>
                            </a>
                        </div>
                        <%-- <div class="col-xs-1 invisible opacity"></div> --%>
                    </div>
                </div>
                <%-- <% end_if %> --%>
            </div>
        </div>
    </div>
</div>