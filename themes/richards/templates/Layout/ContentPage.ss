<div id="mainContent">
    <% if MainImage %>
            <div id="mainImageWrapper">
                <img src="<% control MainImage %><% control CroppedImage(620,300) %>$URL<% end_control %><% end_control %>" width="620" height="300" id="MainImage">
            </div>
    <% end_if %>
    $Content
</div>

<div id="sideContent">
    $WidgetArea
    <% include SideBar %>
</div>

        
