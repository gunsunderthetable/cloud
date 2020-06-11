<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="$ContentLocale">
<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
        <meta name="description" content="Suffolk Cloud">
        <meta name="agency" content="SuffolkCloud">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%-- <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/combo?2.7.0/build/reset-fonts/reset-fonts.css"> --%>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700" rel="stylesheet">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/jquery.sidr.light.css">        
        <link rel="stylesheet" type="text/css" href="$ThemeDir/css/layout.css"> 
</head>
<body class="$ClassName">
        <div id="sidr" role="navigation" aria-label="mobilenavigation">
            <% include MobileNav %>
        </div> 
		<div class="container">
            <div id="PageWrap">
            	<div id="header">
                	<div id="Masthead"></div>
				</div>
		  		<div class="clear"><!-- --></div>
		
				<div id="content" class="clearfix"> 
			  		$Layout
					$Form
				</div>
           		<div class="clear"><!-- --></div>
            </div>
		</div>
        <div id="footer">
            <% include Footer %>
        </div>
        <% include GoogleAnalytics %>
        <script>
            jQuery(document).ready(function() {
              jQuery('#sidr-menu').sidr({side: 'left'});
            });
        </script> 
</body>
</html>