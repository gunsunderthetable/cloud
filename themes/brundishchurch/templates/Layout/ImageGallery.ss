<div class="sixteen columns contentPage alpha omega">
    <div class="one-third column sideBar alpha">

       <% include SubNav %>
       $InheritedWidgets
    </div>
    
    
    <div class="two-thirds column omega">
    <% if MainImage %>
        <img src="<% control MainImage %><% control CroppedImage(630,286) %>$URL<% end_control %><% end_control %>" width="630" height="286" title="$RealTitle" alt="$RealTitle" />
        <% end_if %>  
 	<h1>$Title</h1>
	$Content
	<% if CustomImages %>
	<ul id="imageGallery" class="clearfix">
	    <% control CustomImages %>
	    <li<% if IsPos(3) %> class="last"<% end_if %>>
			<% if Title %><h2>$Title</h2><% end_if %>
	    	<a href="<% control GImage %><% control FittedResize(600,600) %>$URL<% end_control %><% end_control %>" title="<% if PopupTitle %>$PopupTitle<% else %>$Title<% end_if %>">
	    		<img src="<% control GImage %><% control CroppedImage(175,175) %>$URL<% end_control %><% end_control %>" width="175" height="175" alt="$Title">
			</a>
	    </li>
	    <% end_control %>
	</ul>
	<% include ImageGalleryPagination %>
	<% end_if %>
    </div>          


    
   
</div>


