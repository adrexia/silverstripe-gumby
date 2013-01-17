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
