<div class="row pale-grey-bg">
    <div class="col-xs-12">
        <%-- <h3 class="no-padding">$Breadcrumbs</h3> --%>
        <h3>
    	<% if SelectedTag %>
		<% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> 
		<span class="label label-lg label-success">$SelectedTag</span>
		<% else_if SelectedDate %>
		<% _t('BlogHolder_ss.VIEWINGPOSTEDIN', 'Viewing entries posted on') %> 
		<span class="label label-lg label-default">$SelectedNiceDate</span>
		<% else_if SelectedAuthor %>
		<% _t('BlogHolder_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> 
		<span class="label label-lg label-info">$SelectedAuthor</span>
		<% end_if %>
		</h3>
    </div>
    <div class="col-xs-12">
    	<div class="row container">
	    	<% if PaginatedPages %>
	    	<% loop PaginatedPages %>
	    	<div class="col-sm-6 col-md-3">
	            <div class="post-wrapper">
	                <article class="post">
	                    <div class="post-thumb">
	                        <a href="$Link">
	                        	<% if not $backgroundImage %>
				                <img src="{$ThemeDir}/images/ncc27.jpg" alt="Image blog" class="img-responsive">
				                <% else %>
				                $backgroundImage.SetRatioSize(300,300)
				                <% end_if %>
	                        </a>
	                    </div>
	                    <!-- /.post-thumb -->
	                    <div class="post-details">
	                        <h4 class="post-title">
	                        	<a href="$Link">$MenuTitle</a>
	                        </h4>
	                        <div class="post-meta">
	                            <span>Posted on</span>
	                            <a href="$Link">$Date.Long</a>
	                            <%-- <% _t('BlogSummary_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogSummary_ss.POSTEDON', 'on') %> $Date.Long --%>
	                        </div>
	                        <!-- /.post-meta -->
	                        <small class="text-muted">$Content.LimitCharacters(100)</small>
	                        <%-- <hr />
	                        <a class="btn btn-sm btn-success" href="$Link"><i class="fa fa-chevron-right">&nbsp;</i>Read Full Post</a> --%>
	                    </div>
	                    <!-- /.post-details -->
	                </article>
	                <!-- /.post-->
	            </div>
	        </div>
	        <% end_loop %>
	        <% else %>
	        <div class="jumbotron">
                    <p class="muted">Nothing <span class="label label-success label-sm">interesting</span> to make you happy. But we are cooking up something for you.</p>
                </div>
			<%-- <h2><% _t('BlogHolder_ss.NOENTRIES', 'There are no blog entries') %></h2> --%>
			<% end_if %>
			<% include Pagination %>
    	</div>
    </div>
</div>
