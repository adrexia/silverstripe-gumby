<footer class="container" role="contentinfo">
	<h2 class="nonvisual-indicator">Footer</h2>

	<% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>
		<aside class="socialLinks pull-right" role="complementary">
			<% if SiteConfig.TwitterUsername %>
				<a title="Follow us on Twitter" href="http://www.twitter.com/$SiteConfig.TwitterUsername" target="_blank" class="icon-dark icon-small icon-twitter-sign"></a>
			<% end_if %>
			<% if SiteConfig.FacebookURL %>
				<a title="Join us on Facebook" href="http://www.facebook.com/$SiteConfig.FacebookURL" target="_blank" class="icon-dark icon-small icon-facebook-sign"></a>
			<% end_if %>
		</aside>
	<% end_if %>
	<% if Footer %>
		<ul class="nav nav-pills">
			<% with Footer %>
				<% loop Children %>
					<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %>">
						<a href="$Link" class="$LinkingMode">
							$MenuTitle.XML
						</a>
					</li>
				<% end_loop %>
			<% end_with %>
		</ul>
	<% end_if %>

	<div class="pull-left footer-copyright">
		<p><small>$SiteConfig.Title &copy; 2012</small></p>
	</div>

	<div class="pull-right footer-logo">
		<% if SiteConfig.FooterLogo %>
			<% if SiteConfig.FooterLogoLink %>
				<a href="$SiteConfig.FooterLogoLink">
			<% end_if %>
				<img src="$SiteConfig.FooterLogo.URL" width="$SiteConfig.FooterLogo.Width" height="$SiteConfig.FooterLogo.Height"<% if SiteConfig.FooterLogoDescription %> alt="$SiteConfig.FooterLogoDescription" title="$SiteConfig.FooterLogoDescription"<% end_if %> />
			<% if SiteConfig.FooterLogoLink %>
				</a>
			<% end_if %>
		<% else %>
			<a href="http://newzealand.govt.nz/">
				<img src="http://newzealand.govt.nz/img/logo-btext-wbg.gif" width="150" height="40" alt="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" title="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" />
			</a>
		<% end_if %>
	</div>
	
</footer>
