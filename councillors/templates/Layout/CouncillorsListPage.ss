
<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <div class="pageContent">
                <h1>$Title</h1>
                $Content


        <div id="councillors" class="clearFix">
            <% loop $CouncillorsForDisplay %>
                <div class="councillor clearFix<% if Last %> last<% end_if %>">
                    <% if CouncillorImage %>
                    <img src="$CouncillorImage.CroppedImage(160,160).URL" alt="$Title" title="$Title" width="160" height="160"/>
                    <% else %>
                        <img src="councillors/images/avatar-blank.jpg" alt="$Title" title="$Title" width="160" height="160"/>
                    <% end_if %>
                    <div class="councillorText">
                        
                        <% if $Email %>
                        <h2><a title="Click here to email $Title "href="mailto:$Email">$Title $Forename $Name</a></h2>
                        <% else %>
                        <h2>$Title $Forename $Name</h2>
                        <% end_if %>
                        <% if $Party %><p>$Party</p><% end_if %>
                        <% if $Ward %><p><strong>Ward</strong> - $Ward</p><% end_if %>
                        <% if $Telephone %><p><strong>Telephone</strong> - $Telephone</p><% end_if %>
                        <% if $SpecialResonsibilities %><p><strong>Special Responsibilities</strong> - $SpecialResonsibilities</p><% end_if %>

                    </div>
                </div>
            <% end_loop %>
            <% if $MembersOfStaffForDisplay %>
            <h2 id="staffIntro">Members of staff</h2>
                <% loop $MembersOfStaffForDisplay %>
                    <div class="councillor clearFix<% if Last %> last<% end_if %>">
                        <% if CouncillorImage %>
                        <img src="$CouncillorImage.CroppedImage(160,160).URL" alt="$Title" title="$Title" width="160" height="160"/>
                        <% else %>
                        <img src="councillors/images/avatar-blank.jpg" alt="$Title" title="$Title" width="160" height="160"/>
                        <% end_if %>
                        <div class="councillorText">
                            <% if $Email %>
                            <h2><a title="Click here to email $Title "href="mailto:$Email">$Title $Forename $Name</a></h2>
                            <% else %>
                            <h2>$Title $Forename $Name</h2>
                            <% end_if %>
                            <% if $Telephone %><p><strong>Telephone</strong> - $Telephone</p><% end_if %>
                            <% if $SpecialResonsibilities %><p><strong>Special Responsibilities</strong> - $SpecialResonsibilities</p><% end_if %>

                        </div>
                    </div>
                <% end_loop %>

            <% end_if %>
      
        </div>









                <% if $Menu(2) %>
                <div id="mobileLinks" class="mobile bottomed">
                    <div class="clearFix">
                        <h2>In this section</h2>
                        <p>
                            <% loop $menu(2) %>
                            <a class="quickLinkPara $FirstLast" href="$Link" title="$Title">$Title</a>
                            <% end_loop %>
                        </p>
                    </div>
                </div>
                <% end_if %>  
                $Form
                $PageComments
            </div>
            <div class="rightPanel">
                <% include SubNav %>
                $MyWidgetArea
                <% include ImageLinks %>
            </div>
        </div>
    </div>
</div>







<% require css("councillors/css/councillors.css") %>

