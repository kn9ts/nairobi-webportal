<div class="row">
    <div class="col-xs-12 col-7 search-results">
        <h1 class="uppercase">$Title
            <small class="searchQuery">Available <span class="green">opportunities</span></small>
        </h1>
    </div>
</div>
<div class="row">
    <div class="col-sm-12 col-md-7 search-results">
    <% if $AvailableTenders %>
        <% loop $AvailableTenders %>
        <div classs="col-xs-12" id="SearchResults">
            <div class="panel">
                <div class="panel-body">
                    <h3> <a href="$Link">$TenderName</a></h3>
                    <small>Start Date: $StartDate.Long</small>
                    <br />
                    <small>End Date: $EndDate.Long</small>
                    <% if $Content %>
                    <p class="text-muted">$Content.LimitWordCountXML</p>
                    <% end_if %>
                </div>
            </div>
        </div>
        <% end_loop %>
    <% else %>
        <div class="jumbotron">
            <h1 class="green">No tenders available at the moment.</h1>
        </div>
    <% end_if %>

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