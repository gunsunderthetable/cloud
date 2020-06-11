<div class="nine columns">
    $BreadCrumbs
        <h1>$Title</h1>
        <% if Content %>
        <div class="typography">
            $Content
        </div>
        <% end_if %>
        <div id="councillors">
            <% loop $councillors %>
                <div class="councillor clearFix<% if Last %> last<% end_if %>">
                    <% if CouncillorImage %>
                    <img src="$CouncillorImage.CroppedImage(160,160).URL" alt="$Title" title="$Title" width="160" height="160"/>
                    <% end_if %>
                    <div class="councillorText">
                        <h2>$Title</h2>
                        <% if $Email %>
                        <p><a title="Click here to email $Title "href="mailto:$Email">$Name</a> - $Party</p>
                        <% else %>
                        <p>$Name - $Party</p>
                        <% end_if %>

                        <% if $Ward %><p>Ward - $Ward</p><% end_if %>
                        <% if $Telephone %><p>Telephone - $Telephone</p><% end_if %>
                        <% if $SpecialResonsibilities %><p>Special Responsibilities - $SpecialResonsibilities</p><% end_if %>

                    </div>
                </div>
            <% end_loop %>
        </div>
</div>
<div class="three columns">
    <% include SubNav %>
    <% include ImageLinks %>
    $MyWidgetArea
</div>

<% require css("councillors/css/councillors.css") %>

