<% with $Level(1) %>
<% if $Display == "Display" %>
<%-- <div class="space"></div> --%>
<div class="row notification-bar {$AlertColor}-bg hidden">
	<div class="col-xs-12 white text-center uppercase">
		<%-- <div class="fitimage padding"> --%>
			<h5>$Message: <a class="yellow" href="{$Link}">CLICK HERE</a></h5>
		<%-- </div> --%>
    </div>
    <button type="button" class="close hidden-xs hidden-sm pull-left" aria-hidden="true">&times;</button>
</div>
<% end_if %>
<% end_with %>