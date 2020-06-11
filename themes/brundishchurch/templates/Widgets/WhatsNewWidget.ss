<div class="widget">
	<h3><span><span>What's New</span></span></h3>
	<div class="widgetContent">
		<ul>
			<% control Results %>
			<li>
				<p>
					<a href="$Link" title="$Title">$Title</a>
					<br>
					$LimitedContent(76)
			</li>
			<% end_control %>
			<li>
				<a href="$BlogHolder.Link" title="View all">View all &raquo;</a>
			</li>
		</ul>
	</div>
</div>