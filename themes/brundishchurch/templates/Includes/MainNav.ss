<div id="mainNav">
        <ul class="left">
            <% control Menu(1) %>
                <% if ClassName = "EprHomePage" %>
                    <li class="$LinkingMode Last">
                        <a href="$Link" title="$Title" class="$LinkingMode last">$MenuTitle</a>
                    </li>
                <% end_if %>
            <% end_control %>
        </ul>
        <ul class="right">
            <% control Menu(1) %>
                
                    <li class="$LinkingMode $FirstLast">
                        <a href="$Link" title="$Title" class="$LinkingMode $FirstLast">$MenuTitle</a>
                    </li>

            <% end_control %>
        </ul>
</div>