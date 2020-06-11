<div class="sixteen columns alpha omega page">
    <div class="two-thirds column alpha">
        <% if MainImage %>
        <div id="mainImage">      
            <img src="<% control MainImage %><% control CroppedImage(822,275) %>$URL<% end_control %><% end_control %>"  title="$MainImageAlt" alt="$MainImageAlt" width="100%" height="auto" id="BigImage">
        </div>    
        <% end_if %>        
        <div id="pageCopy">
            <h1>$Title</h1>        
            $Content
            $Form
        </div>
    </div>
    <div class="one-third column omega sideBar">
 
        <% include ThumbnailGallery %>
        <% include PullQuote %>
        <% include PageImages %>

    </div>
</div>

