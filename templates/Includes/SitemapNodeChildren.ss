<ul>
	<% loop Children %>
		<% if ShowInMenus %>
			<li data-pagetype="$ClassName" class="$FirstLast class-$ClassName $Pos">
			<% include SitemapNode %>
			</li>
		<% end_if %>
	<% end_loop %>
</ul>
