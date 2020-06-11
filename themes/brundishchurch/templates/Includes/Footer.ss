<div id="contactBar">
        <div class="container">
            <div class="sixteen columns alpha omega footer">    
                <p><% if SiteConfig.ContactPhoneNumber %><span class="phone">call $SiteConfig.ContactPhoneNumber</span> <% end_if %><% if SiteConfig.ContactEmailAddress %><span class="email">email <a href="mailto:{$SiteConfig.ContactEmailAddress}?Subject=Website%20email">$SiteConfig.ContactEmailAddress</a></span> <% end_if %></p>
            </div>
        </div>
</div>   
<div id="footerWrapper">
    <div class="container">
             <div class="sixteen columns alpha omega">
                 <div class="nine columns alpha">
                    <p><span class="contactDetails">Brundish Church, Brundish, Suffolk, England 
                    </span></p>
                </div>
                   
                <% if FooterLinks %>
                <div class="seven columns omega">
                <p>
                    <span class="footerLinks">
                    <% loop FooterLinks %>
                       <% if FirstLast = "first" %><% else %>|<% end_if %><a href="$URL" title="$LinkText">$LinkText</a>
                    <% end_loop %>
                    </span>
                </p>
                </div>
                <% end_if %>
                    
            </div>
    </div>
</div>


