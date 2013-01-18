<!doctype html>
<!--[if lt IE 7]><html id="IE6" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if IE 7]><html id="IE7" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if IE 8]><html id="IE8" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if IE 9]><html id="IE9" class="no-js" lang="$ContentLocale"><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="$ContentLocale"><!--<![endif]-->
<head>
	<% base_tag %>
	<title>$Title | $SiteConfig.Title</title>
	$MetaTags(false)
	<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements. It must be included _before_ the body element -->
	<!--[if lt IE 9]>
		<script src="$Themedir/js/lib/html5shiv-printshiv.js"></script>
	<![endif]-->

	<!-- favicon and touch icons -->
	<link rel="shortcut icon" href="$Themedir/ico/favicon.ico" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="$Themedir/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="$Themedir/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="$Themedir/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="$Themedir/ico/apple-touch-icon-57-precomposed.png">
</head>

<body data-spy="scroll">
	<% include Header %>
	
	<div class="container typography" id="layout">
		$Layout
		<hr>
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
