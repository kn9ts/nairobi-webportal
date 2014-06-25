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
    <div class="col-xs-12 search-results">
        <% if $Results %>
        <% loop $Results %>
        <div cls="col-xs-12" id="SearchResults">
            <div class="panel">
                <div class="panel-body">
                    <h3> <a href="$Link"><% if $MenuTitle %> $MenuTitle <% else %> $Title <% end_if %></a></h3>
                    <% if $Content %>
                    <p class="text-muted">$Content.LimitWordCountXML</p>
                    <% end_if %>
                </div>
            </div>
        </div>
        <% end_loop %>
        <% else %>
        <div class="jumbotron">
            <h1 class="green"><i class="fa fa-meh-o">&nbsp;</i>Sorry, your search query did not return any results.</h1>
        </div>
        <% end_if %>

        <div class="space">&nbsp;</div>
    </div>

    <%-- Pagination --%>
    <div class="col-xs-12">
    <% include Pagination %>
    </div>

</div>
<%-- </div> --%>