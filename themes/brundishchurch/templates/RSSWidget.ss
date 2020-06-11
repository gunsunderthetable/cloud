<div class="widget">
    <h3>$RSSTitle</h3>
<ul class="rssFeed">
	<% control FeedItems %>
		<li>
			<a href="$Link" target ="_BLANK" alt="$Title">$Title</a> $Date.Nice
		</li>
	<% end_control %>
</ul>
</div>