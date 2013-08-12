<!doctype html>
<!--[if lt IE 7]><html id="IE6" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if IE 7]><html id="IE7" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if IE 8]><html id="IE8" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if IE 9]><html id="IE9" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="$ContentLocale"><!--<![endif]-->
<head>
	<% base_tag %>
	
	<%-- $FilterDescription adds additional information from the news and events areas --%>
	<title>$Title <% if FilterDescription %>- $FilterDescription<% end_if %>| $SiteConfig.Title</title>
	
	$MetaTags(false)
	<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements. It must be included _before_ the body element -->
	<!--[if lt IE 9]>
		<script src="$ThemeDir/js/lib/html5shiv-printshiv.js"></script>
	<![endif]-->

	<% if SiteConfig.FavIcon %>
		<link rel="shortcut icon" href="$SiteConfig.FavIcon.AbsoluteURL" />
	<% else %>
		<link rel="shortcut icon" href="{$BaseHref}{$ThemeDir}/ico/favicon.ico" />
	<% end_if %>
	<% if SiteConfig.AppleTouchIcon144 %>
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="$SiteConfig.AppleTouchIcon144.AbsoluteURL">
		<meta name="msapplication-TileImage" content="$SiteConfig.AppleTouchIcon144.AbsoluteURL" />
	<% else %>
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="{$BaseHref}{$ThemeDir}/ico/apple-touch-icon-144-precomposed.png">
		<meta name="msapplication-TileImage" content="{$BaseHref}{$ThemeDir}/ico/apple-touch-icon-144-precomposed.png" />
	<% end_if %>
	<% if SiteConfig.AppleTouchIcon114 %>
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="$SiteConfig.AppleTouchIcon114.AbsoluteURL">
	<% else %>
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="{$BaseHref}{$ThemeDir}/ico/apple-touch-icon-144-precomposed.png">
	<% end_if %>
	<% if SiteConfig.AppleTouchIcon72 %>
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="$SiteConfig.AppleTouchIcon72.AbsoluteURL">
	<% else %>
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="{$BaseHref}{$ThemeDir}/ico/apple-touch-icon-72-precomposed.png">
	<% end_if %>
	<% if SiteConfig.AppleTouchIcon57 %>
		<link rel="apple-touch-icon-precomposed" href="$SiteConfig.AppleTouchIcon57.AbsoluteURL">
	<% else %>
		<link rel="apple-touch-icon-precomposed" href="{$BaseHref}{$ThemeDir}/ico/apple-touch-icon-57-precomposed.png">
	<% end_if %>
</head>

<body data-spy="scroll">
	
	<% include Header %>
	<% include MainNav %>

	<div class="container typography layout" id="layout">
		$Layout
		<hr />
	</div>

	<% include Footer %>

	<% if SiteConfig.GACode %>
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', '$SiteConfig.GACode']);
			_gaq.push(['_trackPageview']);

			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		</script>
	<% end_if %>
	<% if SiteConfig.AddThisProfileID %>
		<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=$SiteConfig.AddThisProfileID"></script>
	<% end_if %>
</body>
</html>
