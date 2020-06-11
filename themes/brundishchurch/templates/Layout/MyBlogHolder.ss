<div id="mainContent">
    <div class="BreadBox">
        $BreadCrumbs
    </div> 
	<h1>$Title</h1>
	<% if Message %>
	<h3>$Message</h3>
	<% end_if %>
   	<% if BlogEntries %>
	<ol class="hfeed">
		<% control BlogEntries %>
		<% include BlogSummary %>
		<% end_control %>
	</ol>
	<% include BlogPagination %>
	<% else %>
	<p>
		No entries found.
	</p>
	<% end_if %>
</div>
<div id="sideContent">
    <% include Search %>
    $InheritedWidgets
</div>