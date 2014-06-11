<%-- <% require css(events/css/layout.css) %>
<% include SideBar %> --%>
<div class = "content-container unit size3of4 lastUnit">
	<event>
		<h3>$Date.Format("l jS F Y")</h3> 
		<hr>
		<h4> $Title </h4>
		<div class = "content">
			$Photo.setWidth(200)
			$Content
		</div>
	</event>
</div>

