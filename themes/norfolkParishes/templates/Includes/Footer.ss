<div id="footer">
    <div class="container">
        <div class="twelve columns footer">
            <div class="row">
                <div id="colophonFooter" role="complementary" aria-labelledby="siteInfo">
                    <div class="colophon left">
                        <p id="siteInfo"><a href="$BaseHref">&copy; $Now.Year $SiteConfig.Title</a> | <a href="https://www.suffolk.cloud/home/accessibility">Accessibility</a> | <a href="https://www.suffolk.cloud/home/accessibility-statement">Accessibility Statement</a></p>
                    </div>
                    <div class="colophon right">
                        <p>
                            <% loop $FooterLinks %>
                            <a href="$URL" title="$LinkText">$LinkText</a><% if Last %><% else %>&nbsp;|&nbsp;<% end_if %>        
                            <% end_loop %>
                        </p>
                    </div>            
                </div>
                <div id="cloudLogo" role="complementary" aria-label="parentSiteLink">
                    <a id="parentSiteLink" href="http://www.norfolk.cloud"><img src = "themes/norfolkParishes/images/cloud_footer_logo.png" alt = "norfolk cloud" /></a>
                </div>
            </div>
        </div>
    </div>
</div>