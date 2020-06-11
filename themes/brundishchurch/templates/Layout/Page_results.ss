<div id="mainContent">
    
	<h1>Search Results</h1>
	<div id="searchResults">
		<% if Results %>
		<% control Results %>
		<div>
			<h2><a href="$Link">$Title</a></h2>
			<p>$LimitedContent(200)</p>
			<p><a href="$Link">Read more &raquo;</a></p>
		</div>
		<% end_control %>
		<% include SearchPagination %>
		<% else %>
		No match found.
		<% end_if %>
	</div>
</div>
<div id="sideContent">

</div>