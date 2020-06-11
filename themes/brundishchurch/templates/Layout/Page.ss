<div class="sixteen columns alpha omega page">
    <div class="twelve columns alpha">
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
    <div class="four columns omega sideBar">
        $WidgetArea
         <% include ThumbnailGallery %>        
         <% include PullQuote %>
         <% include PageImages %>
         
    </div>
</div>