<header class="container" role="banner">
	<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand">
		<% if SiteConfig.Logo %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: {$SiteConfig.Logo.Width}px; height: {$SiteConfig.Logo.Height}px; min-height: {$SiteConfig.Logo.Height}px;">
				$SiteConfig.Logo
				<span>
					$SiteConfig.Title
				</span>
			</a>
		<% else %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: 105px; height: 119px; min-height: 119px;">
				<img src="$ThemeDir/images/logo.png" width="105" height="119" alt="" />
				<span>
					$SiteConfig.Title
				</span>
			</a>
		<% end_if %>
	</<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %>>

	<% if Translations %>
		<ul id="lang">
			<% loop Translations %>
				<li>
					<a href="$Link" lang="$Locale.RFC1766" hreflang="$Locale.RFC1766" title="Read this page in $Locale.Nice">$Locale.Nice</a>
				</li>
			<% end_loop %>
		</ul>
	<% end_if %>
</header>
