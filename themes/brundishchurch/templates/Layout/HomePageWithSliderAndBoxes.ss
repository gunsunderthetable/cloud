
<div class="sixteen columns page alpha omega">
    <div class="six columns alpha">
        <div id="homePageIntro">
            $Content
        </div>
    </div>
    <div class="ten columns omega">
    <% if Slides %>
        <div class="flexslider">
            <ul class="slides">
            <% loop Slides %>
                <li>
                    <img src="$SlideImage.CroppedImage(600,484).URL" alt="$Title" title="$Title" />
                    <p class="flex-caption"><span class="caption-heading">$Title</span><a class="readMore" href="$Page.Link">Read more</a></p>
                </li>
            <% end_loop %>
            </ul>
        </div>
    <% end_if %>
    </div>
    <div class="homePageRow">
        <% loop Boxes %>
        <div class="homePageBox blue third <% if $First %>alpha <% end_if %><% if $Last %>omega <% end_if %>" onclick="location.href='<% if BoxExternalLink %>$BoxExternalLink<% else %>$Page.Link<% end_if %>';">
            <div class="boxText Top">
                <h1><span class="headerReverse">$Title</span></h1>
                <p class="teaserWhite">$Description</p>
            </div>
            <div class="boxLinkArrow"></div>                        
        </div> <!--end homePageBox-->
        <% end_loop %> 
    </div> <!--end HomePageRow-->
 
    $Form
</div>
<% require javascript(mysite/javascript/jquery-1.11.0.min.js) %>
<% require javascript(mysite/javascript/jquery.flexslider-min.js) %>
<% require javascript(mysite/javascript/flex_init.js) %>



				
       
      
		