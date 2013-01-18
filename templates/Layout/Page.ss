<div class="row">
	<% if Menu(2) %>
	<div class="span3">
		<% include SidebarNav %>
	</div>
	<% end_if %>
	<div class="<% if Menu(2) %>span9<% else %>span12<% end_if %>">
		$Breadcrumbs
		<div role="main">
			<header class="page-header subhead">
				<% include PrintShare %>
				<h1>$Title</h1>
			</header>
			$Content
			$Form
			$PageComments
		</div>
	</div>
</div>
