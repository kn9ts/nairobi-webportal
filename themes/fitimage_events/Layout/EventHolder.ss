<div class="row">
    <div class="col-xs-12 col-7 search-results">
        <h1 class="uppercase">Events
            <small class="searchQuery">What's <span class="green">coming</span> up.</small>
        </h1>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 search-results">
        <% if $PaginatedPages %>
        <% loop $PaginatedPages %>
        <div cls="col-xs-12" id="SearchResults">
            <div class="panel">
                <div class="panel-body">
                    <h3> <a href="$Link">$Title</a> <small class="yellow">$Date.Long</small></h3>
                    <small>Start Time: $StartTime.Nice</small>
                    <br />
                    <small>End Time: $EndTime.Nice</small>
                    <% if $Content %>
                    <p class="text-muted">$Content.LimitWordCountXML</p>
                    <% end_if %>
                </div>
            </div>
        </div>
        <% end_loop %>
        <% else %>
        <div class="jumbotron">
            <div class="jumbotron">
                <h1 class="text-success"><i class="fa fa-meh-o">&nbsp;</i>Nothing interesting happening or has happened at the moment.</h1>
                <h3 class="muted"> Come back later! Will have something for you right after a couple cups of coffee.</h3>
                <hr />
                <a class="btn btn-lg btn-success" href="$BaseHref">
                    <i class="fa fa-home">&nbsp;</i>Check something else?
                </a>
            </div>
        </div>
        <% end_if %>
        <div class="space">&nbsp;</div>
    </div>

    <%-- Pagination --%>
    <div class="col-xs-12">
        <% include Pagination %>
    </div>

</div>