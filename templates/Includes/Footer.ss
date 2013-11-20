<footer class="footer typography" role="contentinfo">
	<h2 class="nonvisual-indicator">Footer</h2>
	<div class="row">
	<% if Footer %>
		<ul class="nav nav-pills <% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>six<% else %>twelve<% end_if %>  columns">
			<% with Footer %>
				<% loop Children %>
					<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %>">
						<a href="$Link" class="<% if $LinkingMode = current %>current default<% else %>light<% end_if %> badge">
							$MenuTitle.XML
						</a>
					</li>
				<% end_loop %>
			<% end_with %>
		</ul>
	<% end_if %>

	<% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>
		<div class="social-links six<% if not Footer %> push_six<% end_if %> columns" role="complementary">
			<p>
				<% if SiteConfig.TwitterUsername %>
					<a class="meta-data" href="http://www.twitter.com/$SiteConfig.TwitterUsername"><i class="icon-twitter icon-dark" aria-hidden="true"></i>Follow us on Twitter</a>
				<% end_if %>
				<% if SiteConfig.FacebookURL %>
					<a class="meta-data" href="http://www.facebook.com/$SiteConfig.FacebookURL"><i class="icon-facebook icon-dark" aria-hidden="true"></i>Join us on Facebook</a>
				<% end_if %>
			</p>
		</div>
	<% end_if %>
	</div>
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
