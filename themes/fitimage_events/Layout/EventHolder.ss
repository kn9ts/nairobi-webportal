<div class="row">
    <div class="col-xs-12 col-7 search-results">
        <h1 class="uppercase">Events
            <small class="searchQuery">What's happening or happened around <span class="green">Nairobi</span></small>
        </h1>
    </div>
</div>
<div class="row">
    <div class="col-sm-12 col-md-7 search-results">
    <% if $Events %>
        <% loop $Events %>
        <div classs="col-xs-12" id="SearchResults">
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