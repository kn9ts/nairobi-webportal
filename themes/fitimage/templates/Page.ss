<!--
/**
 * Developed by Emomentum -- Eugene Mutai & Team
 * Email: eugenemutai@gmail.com
 * Site: http://www.knightslab.com
 * Date: 06/04/14 (Updated on 06/05/14)
 * Time: 9:00 AM
 * Description: Nairobi County Website and portal.
 *
 * User Experience(UX) and "how beautiful the site looks!" done by:
 * 
 *  888888 88 888888 88 8b    d8    db     dP""b8 888888     .dP"Y8 888888 88   88 8888b.  88  dP"Yb  .dP"Y8 
 *  88__   88   88   88 88b  d88   dPYb   dP   `" 88__       `Ybo."   88   88   88 8I  Yb  88 dP   Yb `Ybo." 
 *  88""   88   88   88 88YbdP88  dP__Yb  Yb  "88 88""       o.`Y8b   88   Y8   8P 8I  dY  88 Yb   dP o.`Y8b 
 *  88     88   88   88 88 YY 88 dP""""Yb  YboodP 888888     8bodP'   88   `YbodP' 8888Y"  88  YbodP  8bodP' 
 *
 * http://www.fitimagestudios.com
 *
-->
<!DOCTYPE html>
<html lang="$ContentLocale">

<head>
    <!-- Site Necessities -->
    <title>$SiteConfig.Title | $Title</title>
    <% base_tag %>
    $MetaTags(false)
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <%-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> --%>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta http-equiv="cleartype" content="on">

    <link rel="shortcut icon" href="{$ThemeDir}/images/ncclogo.png" />

    <% require themedCSS('bootstrap') %>
    <%-- <link rel="stylesheet" href="frameworks/bootstrap/dist/css/bootstrap.css"> --%>
    
    <!-- Use Font Awesome Icons-->
    <% require themedCSS('font-awesome.min') %>
    <%-- <link rel="stylesheet" href="app/css/font-awesome.min.css"> --%>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!-- if lt IE 9
    script(src="assets/js/html5shiv.js")
    script(src="assets/js/respond.min.js")
    -->
    <!-- Your stylesheets -->
    <% require themedCSS('application') %>
    <% require themedCSS('section') %>
    <%-- <link rel="stylesheet" href="app/css/application.css"> --%>
    <%-- <% require themedCSS('mods') %> --%>

    <% if $ClassName != GalleryPage || $ClassName != SectionHolder %>
    <% require themedCSS('prefixed-main') %>
    <% end_if %>

    <% if $ClassName = GalleryPage %>
    <% require themedCSS("gallery_page") %>
    <% end_if %>
</head>
<body class="$ClassName">
    <%-- <% if $ClassName != HomePage %>require-margin<% end_if %> --%>
    <%-- <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %> --%>

    <% if $ClassName = BlogEntry %><%-- || $ClassName != SectionPage --%>
    <% include AlternateHeader %>
    <% end_if %>

    <!-- Breadcrumbs/Helper navigation bar-->
    <%-- <% if $ClassName != BlogEntry || $ClassName != SectionPage %> --%>
    <% include BreadcrumbsNavbar %>
    <%-- <% end_if %> --%>

    <!--Site page header, only available on the homepage-->
    <% if $ClassName = HomePage %>
    <% include PageHeader %>
    <% end_if %>

    <%-- small top spacing for smaller devices --%>
    <div class="hidden-lg hidden-md space"></div>

    <!-- Content of the site goes in here-->
    <% if $ClassName = HomePage || $ClassName = TenderHolder || $ClassName = EventHolder %>
    <div data-part="homepage content" class="homepage pale-grey-bg">
        <div class="container-fluid content">
            $Layout
        </div>
    </div>
    <% else %>
    <div data-part="other pages content" class="page-content pale-grey-bg">
        <div id="page-content" class="container-fluid <% if $ClassName != EmergencyServicesPage %>content<% end_if %>">
            $Layout
        </div>
    </div>
    <% end_if %>

    </div>
    </div>
    <%-- </div> --%>
    <%-- </div> --%>
    <% if $ClassName != GalleryPage %>
    <% include FooterFixedNavbar %>
    <% end_if %>

    <!-- App's dependencies(libraries) and business logics -->
    <application-engine description="All the application's JS files fall here">
        <!-- jQuery library-->
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.min.js"></script>
        <!-- For cookies and touch support -->
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.cookie.js"></script>
        <%-- <script type="text/javascript" src="{$ThemeDir}/js/jquery.hammer.min.js"></script> --%>
        <%-- A javascript date library for parsing, validating, manipulating, and formatting dates. --%>
        <script type="text/javascript" src="{$ThemeDir}/js/moment.min.js"></script>
        <!-- For CAUSEROL-->
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.carouFredSel-6.2.1-packed.js"></script>
        <!-- Keep sizes of font style in the document -->
        <!-- consistent with the size of the page-->
        <script type="text/javascript" src="{$ThemeDir}/js/flowtype.js"></script>

        <% if $ClassName = GalleryPage || $ClassName = EventPage %>
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.masonry.min.js"></script>
        <!-- Add fancyBox -->
        <link rel="stylesheet" href="{$ThemeDir}/js/fancybox/jquery.fancybox.css" type="text/css"/>
        <script type="text/javascript" src="{$ThemeDir}/js/fancybox/jquery.fancybox.pack.js"></script>
        <% end_if %>

        <!-- Your app functions script -->
        <script type="text/javascript" src="{$ThemeDir}/js/application.js"></script>
        <script type="text/javascript" src="{$ThemeDir}/js/execute.js"></script>

        <% if $ClassName = SectionPage || $ClassName = BlogEntry || $ClassName = HomePage || $ClassName = TenderPage || $ClassName = EventPage %>
        <!-- Go to www.addthis.com/dashboard to customize your tools -->
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4f4ac4c2544a9339"></script>
        <% end_if %>
    </application-engine>

</body>