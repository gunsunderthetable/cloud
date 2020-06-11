<div id="quickLinks">
    <h3>Quick Links</h3>
    <ul>
        <% control QuickLinks %>
        <li<% if Last %> class="last"<% end_if %>>
        	<a href="$URL" title="$LinkText">$LinkText</a>
        </li>
        <% end_control %>
    </ul>
</div>
