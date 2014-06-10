
<div class="col-xs-12 col-sm-6 col-md-12 padding">
    <div class="blog-landing border-color-left the-box-theme blog-bordered clearfix curves">
        <div class="blog-description">
            <div class="row">
                <div class="col-xs-12 blog-pn blog-pn-header">
                    <h4><a href="$Link">$MenuTitle.LimitWordCount(6)</a></h4>
                </div>
                <div class="col-xs-12 blog-pn blog-pn-author">
                    <small class="author additional text-muted clearfix">
                    <% if $Author %>
                    <%-- <% _t( 'BlogSummary_ss.POSTEDBY', 'Posted by') %> --%>
                    <a class="text-muted grey" href="$Link"><em>$Author.XML</em></a>
                    <%--  <% _t( 'BlogSummary_ss.POSTEDON', 'on') %> --%> 
                    <br />
                    <span class="pull-right">$Date.Long</span>
                    <% else %>
                    Shared on $Date.Long
                    <% end_if %>
                    </small>
                    <%-- <a href="$Link" class="btn btn-default btn-xs">
                        <i class="fa fa-angle-right"></i>&nbsp;Read More
                    </a> --%>
                    <%-- <div class="addthis-share-icons padding-xs clearfix" others="bg-warning border-xs">
                        <!-- AddThis Button BEGIN -->
                        <div class="addthis_toolbox addthis_default_style ">
                        <a class="addthis_button_preferred_1"></a>
                        <a class="addthis_button_preferred_2"></a>
                        <a class="addthis_button_preferred_3"></a>
                        <a class="addthis_button_preferred_4"></a>
                        <a class="addthis_button_compact"></a>
                        <a class="addthis_counter addthis_bubble_style"></a>
                        </div>
                        <!-- AddThis Button END -->
                    </div> --%>
                </div>
            </div>
        </div>
        <div class="blog-image">
            <a href="#">
                <% if not $backgroundImage %>
                <img src="{$ThemeDir}/images/ncc07.jpg" alt="Image blog" class="img-responsive">
                <% else %>
                $backgroundImage.SetRatioSize(300, 400)
                <% end_if %>
            </a>
        </div>
    </div>
</div>
