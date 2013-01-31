<% if Pages %>
	<ol class="breadcrumb" aria-label="Breadcrumbs">
		<li><a href="$Baseref" class="divider-right">Home</a> </li>
		<% loop Pages %>
			<% if Last %>
				<li class="active">$Title.XML</li>
			<% else %>
				<li><a href="$Link" class="divider-right">$MenuTitle.XML</a> </li>
			<% end_if %>
		<% end_loop %>
	</ol>
<% end_if %>