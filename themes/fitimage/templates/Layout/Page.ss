<div class="row">
    <div class="col-xs-12 text-center">
    	<h3>$Breadcrumbs</h3>
    </div>
    <div class="col-xs-12">
        <div class="container">
            <div class="blog-container <% if $Form %>hidden<% end_if %>">
                $Content
            </div>
            <% if $Form %>
            <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 white-bg">
                $Form
            </div>
            <% end_if %>
        </div>
    </div>
</div>