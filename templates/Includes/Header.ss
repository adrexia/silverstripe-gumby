<header class="header row" role="banner">
	<% if $AvailableTranslations %>
		<h2 class="nonvisual-indicator">Language Selector</h2>
		<ul id="lang" class="translations nav-pills">
			<% loop $AvailableTranslations %>
				<li>
					<a href="$Link" lang="$LangName" hreflang="$LangName" class="<% if Current %>current default<% else %>light<% end_if %> badge">
						$LangName
					</a>
				</li>
			<% end_loop %>
		</ul>
	<% end_if %>
	<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand columns nine">
		<% if SiteConfig.Logo %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: {$SiteConfig.Logo.Width}px; height: {$SiteConfig.Logo.Height}px; min-height: {$SiteConfig.Logo.Height}px;">
				<img src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height" alt="$SiteConfig.Title logo" title="$SiteConfig.Title" />
				<span>$SiteConfig.Title</span>
			</a>
		<% else %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: 105px; height: 119px; min-height: 119px;">
				<i class="icon-home logo-placeholder"></i>
				<span>
					$SiteConfig.Title
				</span>
			</a>
		<% end_if %>
	</<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %>>
	<div class="search-group columns three">
		$SearchForm
	</div>
</header>

<% include Navbar %>