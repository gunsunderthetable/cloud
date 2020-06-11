        <% if ContentPageGalleryImages %>
        <h2>Gallery</h2>
        <div id="sideGalleryImages" class="clearfix">
            <% control ContentPageGalleryImages %>
            
            <div class="sideGalleryImage $EvenOdd pos$Modulus(2)">
                    <a href="<% control ContentPageGalleryImage %><% control FittedResize(800,600) %>$URL<% end_control %><% end_control %>" rel="shadowbox[GBN]" title="$Title"><img src="<% control ContentPageGalleryImage %><% control CroppedImage(196,196) %>$URL<% end_control %><% end_control %>" width="95" height="95" alt="$Title"></a>
            </div>
            <% end_control %>
        </div>

        <% end_if %> 