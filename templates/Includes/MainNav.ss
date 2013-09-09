<div id="mainNav" class="navbar noCorners">
	<div class="navbar-inner">
		<div class="container">
			<div id="SearchGroup">
				$SearchForm
			</div>

			<button type="button" data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar" aria-owns="top-navigation" aria-controls="top-navigation" aria-expanded="false">
				<span class="nav-text"><% _t('MENU', 'Menu') %></span>

				<span class="nav-right">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</span>
			</button>

			<div id="top-navigation" class="nav-collapse">
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
										<% loop Children %>
											<li>
												<a href="$Link">$MenuTitle.XML</a>
											</li>
										<% end_loop %>
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
