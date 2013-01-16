<header class="container" role="banner">
	<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand">
		<a title="$SiteConfig.Title" href="$BaseHref">
			<% if SiteConfig.Logo %>
				$SiteConfig.Logo
			<% else %>
				<img src="themes/default/images/logo.png" width="105px" height="119px" alt="" />
			<% end_if %>
			$SiteConfig.Title
		</a>
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
			<% include MobileNav %>
			<div class="nav-collapse">
				<div id="SearchGroup" role="search">
					$SearchForm
				</div>
				<nav role="navigation" aria-labeledby="TopLevelPagesLabel">
					<span id="TopLevelPagesLabel" aria-hidden="true" class="nonvisual-indicator">Top level</span>
					<ul class="nav">
						<% include NavChildren %>
					</ul>
				</nav>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div>
