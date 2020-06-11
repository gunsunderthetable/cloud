<% if Matches %>
<div class="widget standard">
    <h3><span><span>$WidgetTitle</span></span></h3>
	<div class="widgetContent">
		<% if IntroText %>
		<p>
	        $IntroText
	    </p>
		<% end_if %>
	    <ul>
	    	<% control Matches %>
	        <li>
	            <a href="$Link" title="$Title">$MenuTitle</a>
	        </li>
			<% end_control %>
	    </ul>
	</div>
</div>
<% end_if %>