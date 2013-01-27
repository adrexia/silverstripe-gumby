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
				<img src="themes/default/images/logo.png" width="105" height="119" alt="" />
				<span>
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
				<div id="SearchGroup">
					$SearchForm
				</div>
				<nav role="navigation">
					<h2 class="nonvisual-indicator">Main navigation</h2>
					<ul class="nav">
						<% loop Menu(1) %>
							<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if Children %> dropdown <% end_if %>">
								<a href="$Link" class="$LinkingMode<% if Children %> dropdown-toggle" data-toggle="dropdown<% end_if %>">
									$MenuTitle.XML <% if Children %><span class="showChildren"><b class="caret"></b></span><% end_if %>
								</a>
								<% if Children %>
									<ul class="dropdown-menu">
										<% control Children %>
											<li>
												<a href="$Link">$MenuTitle.XML</a>
											</li>
										<% end_control %>
									</ul>
								<% end_if %>
							</li>
						<% end_loop %>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
