<div id="Sidebar" class="typography">
	<div class="sidebarBox">
  		<ul id="subNav">
		  	<% loop Menu(1) %>
		  		<li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode levela">$MenuTitle.XML</a></li> 
  			<% end_loop %>
  		</ul>
		<div class="clear"></div>
	</div>
	<div class="sidebarBottom"></div>
</div>
  