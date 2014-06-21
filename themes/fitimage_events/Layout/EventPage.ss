<%-- <div class="row">
    <div class="col-xs-12 text-center">
        <h3>$Breadcrumbs</h3>
    </div>
</div> --%>
<div class="space hidden-sm hidden-md hidden-lg"></div>
<div class="row eventpage space">
    <div class="col-xs-12">
        <h1 class="green">$Title&nbsp;<small>$Date.Format("l jS F Y")</small></h1>
    </div>
    <div class="col-xs-12 col-md-9 tender-container blog-container">
        $Content
        <div class="col-xs-12">
        <% if $EventImages %>
        <%-- EVENT IMAGES --%>
        <div class="row">
            <% loop $EventImages %>
            <div class="col-xs-6 col-sm-3">
                <a href="{$AbsoluteURL}" class="thumbnail fancybox">
                    <%-- <img class="img-responsive" data-src="holder.js/100%x180" alt="100%x180" data-image="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNzEiIGhlaWdodD0iMTgwIj48cmVjdCB3aWR0aD0iMTcxIiBoZWlnaHQ9IjE4MCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9Ijg1LjUiIHk9IjkwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MTcxeDE4MDwvdGV4dD48L3N2Zz4=" src=""> --%>
                    $CroppedImage(300,300)
                </a>
            </div>
            <% end_loop %>
        </div>
        <% end_if %>
        </div>
    </div>
    <div class="col-xs-12 space hidden-sm hidden-md hidden-lg"></div>
    <div class="col-xs-12 col-md-3">
        <div class="panel panel-success">
            <!-- Default panel contents -->
            <div class="panel-heading">Event: $Title</div>
            <!-- Table -->
            <table class="table">
                <tr>
                    <td>Happening on:</td>
                    <td class="text-warning green">$Date.Format("l jS F Y")</td>
                </tr>
                <tr>
                    <td>Start Time:</td>
                    <td class="text-muted">$StartTime.Nice</td>
                </tr>
                <tr>
                    <td>End Time:</td>
                    <td class="text-muted">$EndTime.Nice</td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div class="space"></div>