<div class="row pale-grey-bg">
    <div class="col-xs-12">
        <h3 class="no-padding">$Breadcrumbs</h3>
    </div>
    <div class="col-xs-12">
        <!--The sections/categories-->
        <div class="row">
            <% if $Children %>
            <% loop $Children %>
            <div class="col-xs-12 col-sm-6 col-md-3 category-item-wrapper artwork creative">
                <div class="category-item">
                    <div class="category-thumb">
                        <% if not $backgroundImage %>
                        <img src="{$ThemeDir}/images/ncc07.jpg" alt="Nairobi City Portal" class="img-responsive">
                        <% else %>
                        $backgroundImage
                        <% end_if %>
                        <div class="image-overlay">
                            <a href="$Link" class="category-zoom"><i class="fa fa-eye"></i></a>
                            <a href="$Link" class="category-link"><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                    <div class="category-details">
                        <a href="$Link" class="$LinkingMode">
                            <h3>$MenuTitle.XML</h3>
                        <a/>
                        <hr />
                        <%-- <p class="muted">$Description</p> --%>
                        <span class="text-muted">$Content.LimitWordCount(20)</span>
                    </div>
                </div>
            </div>
            <% end_loop %>
            <% else %>
            <div class="col-xs-12">
                <div class="jumbotron">
                    <h1 class="text-success"><i class="fa fa-meh-o">&nbsp;</i>Nothing to see here yet!!!</h1>
                    <h3 class="muted"> Come back later! Will have something for you right after a couple cups of coffee.</h3>
                    <hr />
                    <a class="btn btn-lg btn-success" href="$BaseHref">
                        <i class="fa fa-home">&nbsp;</i>Check something else?
                    </a>
                </div>
            </div>
            <% end_if %>
        </div>
    </div>
</div>