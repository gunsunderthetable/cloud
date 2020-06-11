<!-- footer -->

<div class="container"> 
	<!-- footer-outer -->
        <div class="col col-3"> 
            <h2>Contact Info</h2>
            <ul class="Contact">
                <% if SiteConfig.PrimaryContactAddress1 %><li>$SiteConfig.PrimaryContactAddress1</li><% end_if %>
                <% if SiteConfig.PrimaryContactAddress2 %><li>$SiteConfig.PrimaryContactAddress2</li><% end_if %>
                <% if SiteConfig.PrimaryContactAddress3 %><li>$SiteConfig.PrimaryContactAddress3</li><% end_if %>
                <% if SiteConfig.PrimaryContactPostcode %><li>$SiteConfig.PrimaryContactPostcode</li><% end_if %>
                <% if SiteConfig.PrimaryContactPhoneNumber %><li>$SiteConfig.PrimaryContactPhoneNumber</li><% end_if %>
                <% if SiteConfig.PrimaryContactEmailAddress %><li>E-mail : $SiteConfig.PrimaryContactEmailAddress </li><% end_if %>
            </ul>
        </div>
        <div class="col col-3"> 
                <h2>Site Links</h2>
                <ul>
		<% control Menu(1) %>	  
                    <li><a href="$Link" title="Go to the $Title.XML page">$MenuTitle.XML</a></li>
                <% end_control %>
                </ul>
        </div>
        <% if SiteConfig.LegalStatement %>
        <div class="col col-2 col-right"> 
                <h2>Legal Stuff</h2>
                <p>
                    $SiteConfig.LegalStatement    
                </p>
        </div>
        <% end_if %>
</div>





