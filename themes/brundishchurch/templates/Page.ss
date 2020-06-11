<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <!--
        *****************************************
        Web Site by Adrian Lynch
        *****************************************
        -->
        <% base_tag %>
        <title><% if $Title %>$Title<% end_if %></title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"></meta>
        <script type="text/javascript" src="//use.typekit.net/ldn7osk.js"></script>
        <script type="text/javascript">try{Typekit.load();}catch(e){}</script>        
        <link rel="shortcut icon" href="<% if SiteConfig.FaviconID %>{$FavAbsoluteBaseURLNoSlash}$SiteConfig.Favicon.URL<% else %>{$FavAbsoluteBaseURL}$ThemeDir/images/favicon.ico<% end_if %>">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/flexsliderstlawrence.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/skeleton.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/base.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/site.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/layout.css">
    </head>
    
    <body class="$ClassName">
            <% include GoogleAnalytics %>
            <% include Header %>
            <div class="container">
                $Layout
            </div>
            <% include Footer %>             
    </body>
</html>

