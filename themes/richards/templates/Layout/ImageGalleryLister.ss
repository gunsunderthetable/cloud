<div id="mainContent">
    <h1>$Title</h1>
    <% if Content %>
    <div class="typography">
        $Content
    </div>
    <% end_if %>

    <div id="imageGallerytLister">
        <ul>
            <% loop GalleryImages %>
            <% if $ClassName == "Image" %>
            <li>
            <a href="$SetRatioSize(800,540).URL" title="$Title">
                <img src="$CroppedImage(330,250).URL" alt="$Title"/>
            </a>                            
            </li>
            <% end_if %>
            <% end_loop %>
        </ul>
    </div>                
    $Form
    $PageComments
</div>
<div id="sideContent">
    $WidgetArea
    <% include SideBar %>
</div>

<% require css("assetlister/css/jquery.lightbox-0.5.css") %>
<% require javascript("assetlister/javascript/jquery.lightbox-0.5.pack.js") %>
<% require javascript("assetlister/javascript/imageGallery.js") %>



