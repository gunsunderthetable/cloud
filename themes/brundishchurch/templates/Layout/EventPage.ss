
<div class="sixteen columns alpha omega page">
    <div class="twelve columns alpha">
        <% if MainImage %>
        <div id="mainImage">       	
            <img src="<% control MainImage %><% control CroppedImage(822,275) %>$URL<% end_control %><% end_control %>"  title="$MainImageAlt" alt="$MainImageAlt" width="100%" height="auto" id="BigImage">
        </div>    
        <% end_if %>   
        <div id="pageCopy">        
            <div class="vevent">
                    <h1 class="summary">$Title</h1>
                    <p class="eventDetails">
                            <% if EqualDates %>
                            Date: <span class="dtstart"><span class="value">$StartDate.Format(j F Y)</span>
                            <br>
                            Time: <span class="value">$StartTime.Nice24</span></span><% if EndTime %> - <span class="dtend">$EndTime.Nice24</span><% end_if %>
                            <% else %>
                            Date: <span class="dtstart"><span class="value">$StartDate.Format(j F Y)</span> <span class="value time">$StartTime</span></span> - <span class="dtend"><span class="value">$EndDate.Format(j F Y)</span><% if EndTime %> <span class="value time">$EndTime</span><% end_if %></span>
                            <br>
                            Time: $StartTime.Nice24 <% if EndTime %> - $EndTime.Nice24<% end_if %>
                            <% end_if %>
                            <br>
                            Location: <span class="location">$Address<% if GooglePostcode %>, $GooglePostcode<% end_if %></span>
                    </p>
                    <div class="typography description">
                            $Content
                    </div>
            </div>
            <div class="meta">
                    <% if TagsCollection %>
                            <p class="tags">
                                     <% _t('TAGS', 'Tags:') %> 
                                    <% control TagsCollection %>
                                            <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
                                    <% end_control %>
                            </p>
                    <% end_if %>
                    <% if LookupCategories %>
                            <p class="categories">
                                     <% _t('TAGS', 'Categories:') %> 
                                    <% control LookupCategories %>
                                            <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts in category') %> '$Tag'">$Tag</a><% if Last %><% else %>,<% end_if %>
                                    <% end_control %>
                            </p>
                    <% end_if %>
            </div>
        </div>
    </div>
    <div class="four columns omega sideBar">
         <% include ThumbnailGallery %>        
         $WidgetArea
         
         <% include PullQuote %>
         <% include PageImages %>
         
    </div>
</div>