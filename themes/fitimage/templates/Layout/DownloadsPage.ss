<div class="row pale-grey-bg space">
    <div class="col-xs-12">
    	<div class="row container">
	    	<% if $Downloads %>
	    	<% loop $Downloads %>
	    	<div class="col-sm-6 col-md-3">
	            <div class="post-wrapper">
	            	<article class="post">
	                    <div class="post-details">
	                        <h4 class="post-title">
	                        	<a href="">$Title</a>
	                        </h4>
	                        <%-- <div class="post-meta">
	                            <span>Posted on</span>
	                            <a href="">21 June 2014</a>
	                        </div> --%>
	                        <!-- /.post-meta -->
	                        <%-- <small class="text-muted">Download File</small> --%>
	                        <a href="{$Document.AbsoluteURL}" download="{$Title}.{$Document.Extension}" class="btn btn-lg btn-success btn-block" >Download</a>
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
