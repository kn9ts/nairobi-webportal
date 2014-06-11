<%-- <div class="row">
    <div class="col-xs-12 text-center">
        <h3>$Breadcrumbs</h3>
    </div>
</div> --%>
<div class="row space">
    <div class="col-xs-12 col-md-3">
        <div class="panel panel-success">
            <!-- Default panel contents -->
            <div class="panel-heading">$Title</div>
            <!-- Table -->
            <table class="table">
                <tr>
                    <td>Event Date:</td>
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
    <div class="col-xs-12 col-md-9 tender-container blog-container">
        $Content
    </div>
</div>
<div class="space"></div>