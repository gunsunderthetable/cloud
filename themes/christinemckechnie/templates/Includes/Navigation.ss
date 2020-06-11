<ul id ="mainNav">
 	<% loop Menu(1) %>	  
  		<li><a class="$LinkingMode" href="$Link" title="Go to the $Title.XML page">$MenuTitle.XML</a></li>
   	<% end_loop %>
 </ul>