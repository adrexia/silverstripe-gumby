<% if Pages %>
	<nav role="navigation" aria-labeledby="BreadcrumbsLabel">
		<span id="BreadcrumbsLabel" aria-hidden="true" class="nonvisual-indicator">Breadcrumbs</span>
		<ol class="breadcrumb">
			<li><a href="$Baseref">Home</a> <span class="divider">/</span></li>
			<% loop Pages %>
				<% if Last %>
					<li class="active">$Title.XML</li>
				<% else %>
					<li><a href="$Link">$MenuTitle.XML</a> <span class="divider">/</span></li>
				<% end_if %>
			<% end_loop %>
		</ol>
	</nav>
<% end_if %>
