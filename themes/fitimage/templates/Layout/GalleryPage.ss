<% if $FitimagePhotos %> 
<div class="gallery-container">
	<% loop $FitimagePhotos %>
		<%-- <% if $URL %> --%>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 image-container col-{$MultipleOf(3,1)}">
			<a class="fancybox" href="{$AbsoluteURL}">$CroppedImage(640,640)</a>
		</div>
		<%-- <% else %>
		<div class="col-xs-6 col-sm-4 col-md-3 image-container col-{$Modulus(3,1)}">
			<a class="fancybox" href="{$URL}">$CroppedImage(500,500)</a>
		</div>
		<% end_if %> --%>
	<% end_loop %>
</div>
 
<% end_if %>