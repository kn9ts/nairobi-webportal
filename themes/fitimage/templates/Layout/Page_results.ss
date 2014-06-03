<%-- <div class="container main" role="main"> --%>
    <div class="row space row-close-btn">
        <button type="button" class="close hidden-xs hidden-sm" aria-hidden="true">&times;</button>
        <div class="col-xs-12 col-5">
            $SearchForm
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-7 search-results">
            <h1 class="uppercase">$Title
            <% if $Query %>
                <small class="searchQuery">/ You searched for <span class="green">&quot;{$Query}&quot;</span></small>
            <% end_if %>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 col-md-7 search-results">
        <% if $Results %>
            <% loop $Results %>
            <div classs="col-xs-12" id="SearchResults">
                <div class="panel">
                    <div class="panel-body">
                        <h3> <a href="$Link"><% if $MenuTitle %> $MenuTitle <% else %> $Title <% end_if %></a> </h3>
                        <% if $Content %>
                        <p class="text-muted">$Content.LimitWordCountXML</p>
                        <% end_if %>
                    </div>
                </div>
            </div>
            <% end_loop %>
        <% else %>
            <div class="jumbotron">
                <h1 class="green">Sorry, your search query did not return any results.</h1>
            </div>
        <% end_if %>

        <% include Pagination %>
        <div class="space">&nbsp;</div>
        </div>
        <div class="col-xs-12 col-md-5">
            <div class="col-xs-12 blog-section">
                <h3 class="no-padding no-margin">News, Events and Updates
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
                    <p class="muted"> Nothing <span class="label label-success label-sm">new</span> yet!! But you will be the 1st to know if anything pops up!</p>
                </div>
                <% end_if %>
            </div>
        </div>
    </div>
<%-- </div> --%>