<div class="blogSummary">
	<h2 class="postTitle"><a href="$Link" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	<p class="authorDate">$Date.Long</p>
	<% if TagsCollection %>
		<p class="tags">
			<% _t('BlogSummary_ss.TAGS','Tags') %>:
			<% loop TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
			<% end_loop %>
		</p>
	<% end_if %>

	<% if BlogHolder.ShowFullEntry %>
		$Content
	<% else %> 
		<p>$Content.FirstParagraph(html)</p>
	<% end_if %>
	
	<p class="blogVitals damnit">
		<a href="$Link" class="readmore" title="Read the full post on $Title">Read more on $Title</a>
	</p>
</div>
