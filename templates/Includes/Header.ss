<header class="container" role="banner">
	<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand">
		<% if $SiteConfig.Logo %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: {$SiteConfig.Logo.Width}px; height: {$SiteConfig.Logo.Height}px; min-height: {$SiteConfig.Logo.Height}px;">
				$SiteConfig.Logo
				<span>
					$SiteConfig.Title
				</span>
			</a>
		<% else %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: 105px; min-height: 119px; position: relative; display: block;">
				<img src="themes/default/images/logo.png" width="105" height="119" alt="" />
				<span style="float: left; margin-top: 38px; margin-left: 5px;">
					$SiteConfig.Title
				</span>
			</a>
		<% end_if %>
	</<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %>>

	<% if Translations %>
		<ul id="lang">
			<% control Translations %>
				<li>
					<a href="$Link" lang="$Locale.RFC1766" hreflang="$Locale.RFC1766" title="Read this page in $Locale.Nice">$Locale.Nice</a>
				</li>
			<% end_control %>
		</ul>
	<% end_if %>
</header>

<div class="navbar noCorners">
	<div class="navbar-inner">
		<div class="container">
			<a href="#" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>

			<div class="nav-collapse">
				<div id="SearchGroup" role="search">
					$SearchForm
				</div>
				<nav role="navigation" aria-label="Top level">
					<ul class="nav">
						<% include NavChildren %>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
