<div class="row">
    <% include Pagination %>
    <div class="col-xs-12">
        <div class="blog-container fitimage white-bg">
            <div class="col-xs-12 col-7 search-results">
                <h1 class="uppercase">$Title
                    <small class="uppercase">Available <span class="green">opportunities</span> </small>
                </h1>
            </div>
            <% if $AvailableTenders %>
             <div class="row">
                <% loop $PaginatedPages %>
                <%-- Make them change sides --%>
                <% if $Odd %>
                <div class="col-xs-12">
                    <div class="col-sm-12 col-md-8">
                        <h2 class="no-margin no-padding">$Title</h2>
                        <small class="label label-lg label-success">Announced Date: $StartDate.Long</small>
                        <%-- <br /> --%>
                        <small class="label label-lg label-danger">Closing Date: $EndDate.Long</small>
                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                        <div class="addthis_sharing_toolbox space"></div>
                        <%-- <div class="addthis_native_toolbox space"></div> --%>
                        <% if $Content %>
                        <p class="text-muted">$Content</p>
                        <% end_if %>

                        <% if isDocumentAttached %>
                        <%-- <p>$isDocumentAttached</p> --%>
                        <a href="{$TenderDocument.AbsoluteURL}" download="{$TenderName}.{$TenderDocument.Extension}" class="text-muted btn btn-md btn-success">Download Document</a>
                        <% end_if %>
                    </div>

                    <div class="col-sm-12 col-md-4">
                        <% if $TenderImage %>
                        <%-- $CroppedImage(400,400) --%>
                        <img class="img-responsive" src="{$TenderImage.CroppedImage(400,400).AbsoluteURL}" />
                        <% else %>
                        <img class="img-responsive" src="{$ThemeDir}/images/ncc07.jpg">
                        <% end_if %>
                        <p class="caption">$Title</p>
                    </div>
                </div>
                <% else %>
                <div class="col-xs-12">
                    <div class="col-sm-12 col-md-4">
                        <% if $TenderImage %>
                        <%-- $CroppedImage(400,400) --%>
                        <img class="img-responsive" src="{$TenderImage.CroppedImage(400,400).AbsoluteURL}" />
                        <% else %>
                        <img class="img-responsive" src="{$ThemeDir}/images/ncc07.jpg">
                        <% end_if %>
                        <p class="caption">$Title</p>
                    </div>

                    <div class="col-sm-12 col-md-8">
                        <h2 class="no-margin no-padding">$Title</h2>
                        <small class="label label-lg label-success">Start Date: $StartDate.Long</small>
                        <%-- <br /> --%>
                        <small class="label label-lg label-danger">End Date: $EndDate.Long</small>
                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                        <div class="addthis_sharing_toolbox space"></div>
                        <%-- <div class="addthis_native_toolbox space"></div> --%>
                        <% if $Content %>
                        <p class="text-muted">$Content</p>
                        <% end_if %>

                        <% if isDocumentAttached %>
                        <%-- <p>$isDocumentAttached</p> --%>
                        <a href="{$TenderDocument.AbsoluteURL}" download="{$TenderName}.{$TenderDocument.Extension}" class="text-muted btn btn-md btn-success">Download Document</a>
                        <% end_if %>
                    </div>
                </div>
                <% end_if %>
                <% end_loop %>
            </div>
            <% else %>
                <div class="jumbotron">
                    <h1 class="green">No tenders available at the moment.</h1>
                </div>
            <% end_if %>
        </div>
        <div class="row pager-space">
            <% include Pagination %>
        </div>
    </div>
</div>

