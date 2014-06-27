<!-- NCC DESCRIPTION DIRECT LINK -->
<div class="row row-close-btn">
    <button type="button" class="close hidden-xs hidden-sm" aria-hidden="true">&times;</button>
    <div class="col-xs-12">
        <div class="row space">
            <!-- WHAT IS NCC?? -->
            <div class="col-xs-12 col-sm-6 col-md-8">
                <div class="row action-box no-padding no-margin bg-warnin">
                    <div class="hidden-xs col-sm-2 col-lg-offset-1 col-lg-1 space">
                        <img src="{$ThemeDir}/images/ncclogo-blue.png" max-width="60px" class="img-responsive">
                    </div>
                    <div class="col-xs-12 col-sm-10 col-lg-10 padding-top">
                        <a href="explore-nairobi" class="uppercase abtncc text-center">
                            <h4>Explore Nairobi County</h4>
                        </a>
                    </div>
                </div>
            </div>

            <!-- SEARCH BAR -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                $SearchForm
            </div>
        </div>
    </div>
</div>

<!-- Page menu -->
<div class="row margin-btm">
    <div class="col-xs-12">
        <div class="row">
            <!-- App menu -->
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 text-align-center">
                <div class="row main-menu">
                    <% if $Children %>
                        <% loop $Children %>
<<<<<<< HEAD
                        <% if $ClassName = SectionHolder || $ClassName = SectionPage || $ClassName = TenderHolder || $ClassName = EventHolder || $ClassName = CityBylawsPage || $ClassName = CountyOperationsPage || $ClassName = RedirectorPage || $ClassName = RedirectorExtendedPage || $ClassName = BlogNewsHolder || $ClassName = CountyLawsHolder %>
=======
                        <% if $ClassName = SectionHolder || $ClassName = SectionPage || $ClassName = TenderHolder || $ClassName = EventHolder || $ClassName = CityBylawsPage || $ClassName = CountyOperationsPage || $ClassName = EpaymentsRedirectorPage || $ClassName = BlogNewsHolder %>
>>>>>>> 16f30ffff9613a1693e7a326d10681ef109eaedd
                        <div class="col-xs-12 col-sm-6 col-md-6 {$ClassName}-menu">
                            <a href="$Link">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="row page-menu-title">
                                            <div class="col-xs-3">
                                                <i class="fa {$IconType} fa-4x grey" $IconColor>&nbsp;</i>
                                            </div>
                                            <div class="col-xs-9">
                                                <h4>
                                                    <span>$MenuTitle.XML</span>
                                                </h4>
                                            </div>
                                        </div>
                                        <%-- <h4>
                                            <i class="fa {$IconType} fa-4x grey" $IconColor></i>
                                            <span>$MenuTitle.XML</span>
                                        </h4> --%>
                                        <div class="sr-only">
                                            <p>$Description</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <% end_if %>
                        <% end_loop %>
                    <% end_if %>
                </div>
            </div>
            <!-- Blog posts -->
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 blog-section no-padding">
                <div class="blog-tab">
                    <h3 class="no-padding no-margin">News/Updates
                        <br/>
                        <small class="muted">The little things that matter.</small>
                    </h3>
                    <hr class="margin">
                    <% if LatestUpdates %>
                    <div class="row blog-row">
                        <% loop $LatestUpdates %>
                            <% include BlogPreviewSection %>
                        <% end_loop %>
                    </div>    
                    <% else %>
                    <div class="jumbotron">
                        <p class="muted"> Nothing <span class="label label-success label-sm">interesting</span> to make you happy. But we are cooking up something for you.</p>
                    </div>
                    <% end_if %>
                </div>
                <% if LatestUpdates %>
                <div class="col-xs-12 col-sm-12 col-md-12 padding text-center grey-bg yellow open-reader-link">
                    <div class="col-xs-3 col-sm-6 col-md-3">
                        <h3 class="fa fa-microphone yellow">&nbsp;</h3>
                    </div>
                    <a href="{$BaseHref}home/news-and-updates/">
                        <div class="col-xs-9 col-sm-6 col-md-9">
                            <h3 class="yellow">
                                <span>Open News Reader</span>
                            </h3>
                        </div>
                    </a>
                </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>

<!-- Page Mini Menu -->
<div class="row">
    <div class="col-xs-12 col-lg-8 text-align-center">
        <div id="mini-menu" class="row mini-menu $ClassName">
            <% if $Children %>
                <% loop $Children %>
                <% if $ClassName = MiniSection || $ClassName = MapsPage || $ClassName = DownloadsPage || $ClassName = RedirectorPage || $ClassName = RedirectorExtendedPage  %>
                <a href="$Link">
                    <div class="col-xs-6 col-sm-3 col-md-3 panel-{$bgColor}-bg">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row page-menu-title">
                                    <div class="col-xs-3">
                                        <i class="fa {$IconType} fa-2x grey" $IconColor>&nbsp;</i>
                                    </div>
                                    <div class="col-xs-9">
                                        <h4 class="grey">
                                            <span>$MenuTitle.XML</span>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <% end_if %>
                <% end_loop %>
            <% end_if %>
        </div>
    </div>
</div>