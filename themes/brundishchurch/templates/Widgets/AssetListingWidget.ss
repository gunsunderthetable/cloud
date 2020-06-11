<div class="widget standard assetListingWidget">
	<h3><span><span>$WidgetTitle</span></span></h3>
	<div class="widgetContent">
		<% if IntroText %>
		<p>
			$IntroText
		</p>
		<% end_if %>
		<ul>
			<% control Files %>
			<% if IsSupportedFile %>
			<li class="$CSSClass">
				<a href="$URL">$Title</a>
				<br>
				<span class="size">Size $Size</span>
			</li>
			<% end_if %>
			<% end_control %>
		</ul>
	</div>
</div>
