<nav id="navbar" class="row navbar" role="navigation">
	<a class="toggle" gumby-trigger=".navbar > ul" href="#" aria-owns="top-navigation" aria-controls="top-navigation" aria-expanded="false" role="button">
		<i class="icon-menu"></i>
	</a>
	<h2 class="nonvisual-indicator">Main navigation</h2>
	<ul class="nav twelve columns">
		<% loop Menu(1) %>
			<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if Children %> has-children <% end_if %>">
				<a href="$Link" class="$LinkingMode">
					$MenuTitle.XML
				</a>
				<% if Children %>
				<div class="dropdown">
					<ul>
						<% loop Children %>
							<li>
								<a href="$Link">$MenuTitle.XML</a>
							</li>
						<% end_loop %>
					</ul>
				</div>
				<% end_if %>
			</li>
		<% end_loop %>
	</ul>
</nav>