<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="$ContentLocale">
<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/combo?2.7.0/build/reset-fonts/reset-fonts.css"> 

</head>
<body class="$ClassName">

		<div class="container">
                    <div id="PageWrap">
                           <div id="nav">
                                 <% include Navigation %>
                            </div>
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
 

                <div id="footer-bottom" class="clearfix">                    
			<% include UnderFooter %>
		</div> 

</body>
</html>