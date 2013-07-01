<footer class="container" role="contentinfo">
	<h2 class="nonvisual-indicator">Footer</h2>

	<% if Footer %>
		<ul class="nav nav-pills pull-left">
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

	<% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>
		<aside class="socialLinks pull-right" role="complementary">
			<% if SiteConfig.TwitterUsername %>
				<a title="Follow us on Twitter" href="http://www.twitter.com/$SiteConfig.TwitterUsername" target="_blank"><i class="icon-twitter-sign icon-dark"></i>Follow us on Twitter</a>
			<% end_if %>
			<% if SiteConfig.FacebookURL %>
				<a title="Join us on Facebook" href="http://www.facebook.com/$SiteConfig.FacebookURL" target="_blank"><i class="icon-dark icon-facebook-sign"></i>Join us on Facebook</a>
			<% end_if %>
		</aside>
	<% end_if %>

	<div class="footer-logo">
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
				<img src="$ThemeDir/images/logo-btext-wbg.gif" width="150" height="40" alt="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" title="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" />
			</a>
		<% end_if %>
	</div>
	
	<div class="footer-copyright">
		<p><small>$SiteConfig.Title &copy; $CurrentDatetime.Format(Y)</small></p>
	</div>
	
</footer>
