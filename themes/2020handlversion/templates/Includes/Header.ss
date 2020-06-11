<div id="header" role="banner" aria-labelledby="header" name="site-header">
    <div class="container">
        <a href="$BaseHref"><img class="masthead desktop" src="$ThemeDir/images/logo.png" alt="Heelis and lodge logo" title ="Heelis and lodge logo" /></a>

        <div id="headerTools">
            <% if $HeaderLinks %> 
            <p>
                <% loop $HeaderLinks %>
                    <a href="$URL" title="$LinkText">$LinkText</a><% if Last %><% else %>&nbsp;|&nbsp;<% end_if %>        
                <% end_loop %>    
            </p>
            <% end_if %>
            <% if $SiteConfig.TwitterLink || $SiteConfig.FacebookLink %>
            <div id="socialButtons">
                <% if $SiteConfig.TwitterLink %><a href="$SiteConfig.TwitterLink" target="_blank" ><img src ="$ThemeDir/images/twitter.png" alt="twitter"/></a><% end_if %>
                <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.FacebookLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/facebook.png" alt="facebook"/></a><% end_if %>
            </div>
            <% end_if %>
        </div>
    </div>  
</div>
</div>

<div id="mobileHeader" class="mobile" role="banner"  aria-labelledby="mobileHeader" name="mobile-header">
    <div class="container">
        <div id="mobileHeaderPanel" class="twelve columns clearFix">
            <a href="$BaseHref"><img class="masthead mobile" src="$ThemeDir/images/logo.png" alt="Heelis and lodge logo" title ="Heelis and lodge logo" /></a>
            <div id="mobileHeaderTools">
                <a class="menuButton mobileNav" id="sidr-menu" href="#sidr"><img src="$ThemeDir/images/mobile_menu.png" alt="mobile menu button" /></a>
            </div>
        </div>  
    </div>
</div>

<% include MainNav %>
