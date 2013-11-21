<% if Menu(2) %>
	<% cached 'menu2', ID, List(Page).max(LastEdited) %>
	<nav class="secondary-menu vertical-nav columns three" id="page-nav" role="navigation">
		<h2 class="nonvisual-indicator">Secondary Navigation</h2>
		<ul class="nav nav-list">
			<% loop Menu(2) %>
				<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if $First %> first<% end_if %><% if $Last %> last<% end_if %>">
					<a href="$Link" class="<% if $LinkingMode = current %>active<% end_if %>">
					$MenuTitle
					</a>
					<% if Children %>
						<% if $LinkingMode = current || $LinkingMode = section %>
							<ul class="nav nav-list">
								<% include SecondaryMenuChildren First=$First, Last=$Last %>
							</ul>
						<% end_if %>
					<% end_if %>
				</li>
			<% end_loop %>
		</ul>
	</nav>
	<% end_cached %>
<% end_if %>
