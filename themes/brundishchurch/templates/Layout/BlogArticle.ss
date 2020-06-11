<div id="mainContent">
    <div class="BreadBox">
        $BreadCrumbs
    </div> 
	<h1>$Title</h1>
	<div class="typography">
		<% if BlogImageID %>
		<img class="left" <% control BlogImage %><% control CroppedImage(400,300) %>src="$URL" width="400" height="300"<% end_control %><% end_control %> alt="$Title">
		<% end_if %>
		$Content
	</div>
	<p class="authorDate vcard">
		By <span class="fn">$Author</span> on <abbr class="updated published" title="$Date">$Date.Format(F jS), $Date.Year</abbr>
	</p>
	<div class="meta">
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('TAGS', 'Tags:') %> 
				<% control TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</p>
		<% end_if %>
		<% if LookupCategories %>
			<p class="categories">
				 <% _t('TAGS', 'Categories:') %> 
				<% control LookupCategories %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts in category') %> '$Tag'">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</p>
		<% end_if %>
	</div>
	<% include Social %>
	<% if Matches %>
	<h2>You may also like this</h2>
	<ul>
		<% control Matches %>
		<li><a href="$Link" title="$Title">$Title</a></li>
		<% end_control %>
	</ul>
	<% end_if %>
	$PageComments
</div>
<div id="sideContent">
    	<% include Search %>
        $InheritedWidgets
</div>