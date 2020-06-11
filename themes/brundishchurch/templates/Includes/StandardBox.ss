        <div class="homePageBox $BoxColour third <% if First %>alpha <% end_if %><% if Last %>omega <% end_if %>" onclick="location.href='<% if BoxExternalLink %>$BoxExternalLink<% else %>$Page.Link<% end_if %>';">

            <% if BoxImage %>
                 <img class="boxImage" src="<% control BoxImage %><% control CroppedImage(220,280) %>$URL<% end_control %><% end_control %>" alt="$BoxTitle" title="$BoxTitle">
            <% end_if %>
            <div class="boxText $BoxTitlePosition">

            <% if BoxTitle %>
                <h1><span class="headerReverse">$BoxTitle</span></h1>
            <% end_if %>
            
                <p <% if BoxTeaserTextWhite=1 %>class="teaserWhite"<% end_if %>>$BoxTeaserText</p>
            </div>
            <div class="boxLinkArrow"></div>                        
        </div> <!--end homePageBox-->