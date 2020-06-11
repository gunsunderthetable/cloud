<div class="widget standard">
    <h3><span><span>$WidgetTitle</span></span></h3>
	<div class="widgetContent">
		<% if IntroText %>
	    <p>
	        $IntroText
	    </p>
		<% end_if %>
	    <ul>
	    	<% if Tag %>
			<% control TagResults %>
			<li><a href="$Link" title="$Title">$Title</a></li>
			<% end_control %>
			<% else %>
			<% if Link1Text %>
			<li><a href="<% if Link1ELink %>$Link1ELink<% else %>$Link1ILink.Link<% end_if %>">$Link1Text</a></li>
			<% end_if %>
			<% if Link2Text %>
			<li><a href="<% if Link2ELink %>$Link2ELink<% else %>$Link2ILink.Link<% end_if %>">$Link2Text</a></li>
			<% end_if %>
			<% if Link3Text %>
			<li><a href="<% if Link3ELink %>$Link3ELink<% else %>$Link3ILink.Link<% end_if %>">$Link3Text</a></li>
			<% end_if %>
			<% if Link4Text %>
			<li><a href="<% if Link4ELink %>$Link4ELink<% else %>$Link4ILink.Link<% end_if %>">$Link4Text</a></li>
			<% end_if %>
			<% end_if %>
	    </ul>
	</div>
</div>
