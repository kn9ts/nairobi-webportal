<%-- Breadcrumbs are the path of parent pages which needs to be taken to reach the current  --%>
<% if $Pages %>
<ol class="breadcrumb" bla="no-margin no-padding">
    <% loop $Pages %>
        <% if $Last %>
        	<li class="active">$Title.XML</li>
        <% else %>
        	<li><a href="$Link">$MenuTitle.XML</a></li>
        <% end_if %>
    <% end_loop %>
</ol>
<% end_if %>
