<header class="container" role="banner">
	<% include SkipLinks %>
	
	<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand">
		<% if SiteConfig.Logo %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: {$SiteConfig.Logo.Width}px; height: {$SiteConfig.Logo.Height}px; min-height: {$SiteConfig.Logo.Height}px;">
				<img src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height" alt="$SiteConfig.Title logo" title="$SiteConfig.Title" />
				<span>$SiteConfig.Title</span>
			</a>
		<% else %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: 105px; height: 119px; min-height: 119px;">
				<img src="$ThemeDir/images/logo.png" width="105" height="119" title="My Department Logo" alt="My Department Logo" />
				<span>
					$SiteConfig.Title
				</span>
			</a>
		<% end_if %>
	</<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %>>
	<% if $AvailableTranslations %>
		<ul id="lang" class="translations">
			<% loop $AvailableTranslations %>
				<li>
					<a href="$Link" lang="$LangName" hreflang="$LangName" class="<% if Current %>current<% end_if %>">
						$LangName
					</a>
				</li>
			<% end_loop %>
		</ul>
	<% end_if %>
</header>