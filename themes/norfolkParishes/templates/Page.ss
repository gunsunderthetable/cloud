<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <% base_tag %>
        <title>$Title</title>
        <meta name="description" content="Suffolk Cloud">
        <meta name="agency" content="SuffolkCloud">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/jquery.sidr.light.css">        
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/normalize.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/skeleton.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/site.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.css" />        
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/{$SiteConfig.SiteColour}.css">
        <link href="https://fonts.googleapis.com/css?family={$SiteConfig.SiteFonts}:400,700" rel="stylesheet"> 
        $SiteConfig.FontCss
        <% if $SiteConfig.Favicon %>
        <link rel="shortcut icon" href="$SiteConfig.Favicon.URL" />        
        <% else %>
        <% end_if %>
        <% include GoogleAnalytics %>
        <% if $ImageLinks %>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700" rel="stylesheet">
        <% end_if %>
        <%-- Cookie button starts --%>
        <script src="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.js" data-cfasync="false"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>
        <script>
        window.addEventListener("load", function(){
        window.cookieconsent.initialise({
          "palette": {
            "popup": {
              "background": "#000"
            },
            "button": {
              "background": "#f1d600"
            }
          },
          "position": "bottom-right",
          "content": {
            "href": "http://www.suffolk.cloud/home/cookies-on-suffolk-cloud-sites"
          }
        })});
        </script>
        <%-- cookie button ends --%>        
    </head>
    <body class="$ClassName">
        <a href="#mainContent" role="navigation" aria-label="SkipToContent" class="hideSkipper">Skip to main content</a>
        <div id="sidr" role="navigation" aria-label="mobilenavigation">
            <% include MobileNav %>
        </div>      

        <% include Header %>
   
        <div id="mainContent" class="container" role="main" aria-label="maincontent">
            $Layout
        </div>

        <% include Footer %>

        <script>
            jQuery(document).ready(function() {
              jQuery('#sidr-menu').sidr({side: 'left'});
            });
        </script>         
    </body>
</html>