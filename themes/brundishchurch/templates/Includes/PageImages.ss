       <% if ContentPageImages %>
           <div id="sideImages">
                <% control ContentPageImages %>
                <div class="sideImage">
                        <a href="$LinkPage.Link" title="$Title" alt="$Title"><img src="<% control ContentPageImage %><% control CroppedImage(295,132) %>$URL<% end_control %><% end_control %>" width="97%" height="auto" alt="$RealTitle"></a>
                        <p><a href="$LinkPage.Link" class="readMore" title="$Title" alt="$Title">$RealTitle</a></p>
                </div>
                <% end_control %>
            </div>
       <% end_if %>  