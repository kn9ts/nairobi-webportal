<div class="row pale-grey-bg">
    <div class="col-xs-12">
		<%-- <h3 class="no-padding text-center">$Breadcrumbs</h3> --%>
    	<% if SelectedTag %>
		<h3><% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
		<% else_if SelectedDate %>
		<h3><% _t('BlogHolder_ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
		<% else_if SelectedAuthor %>
		<h3><% _t('BlogHolder_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h3>
		<% end_if %>
    </div>
</div>
<div class="row pale-grey-bg">
    <div class="col-xs-12">
    	<div class="blog-container">
    		$Content
		</div>
    <div>
    <div class="col-xs-12 space">
		<div class="blog-tag-container text-center">
			<% if TagsCollection %>
			<div class="tags">
				 <% _t('BlogEntry_ss.TAGS', 'Tags:') %> 
				<% loop TagsCollection %>
					<a class="label label-success label-xs" href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a>
					<% if not Last %>,<% end_if %>
				<% end_loop %>
			</div>
			<% end_if %>
		</div>
	</div>

    <%-- <div class="col-xs-12 col-md-3">
		<% if IsOwner %>
		<p class="edit-post">
			<a class="btn btn-sm btn-default" href="$EditURL" id="editpost" title="<% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %>">
				<% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %>
			</a>
			 or  
			<a class="btn btn-sm btn-danger" href="$Link(unpublishPost)" id="unpublishpost">
			<% _t('BlogEntry_ss.UNPUBLISHTHIS', 'Unpublish this post') %>
			</a>
		</p>
		<% end_if %>
    </div> --%>
	<%-- $PageComments --%>
</div>
<div class="space-lg"></div>
