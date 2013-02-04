<div class="row">
	<% include Breadcrumbs %>
	<% if Menu(2) %>
		<div class="span3">
			<% include SidebarNav %>
		</div>
	<% end_if %>
	<div class="<% if Menu(2) %>span9<% else %>span12<% end_if %>">
		<div role="main">
			<h1>$Title</h1>
			$Content.RichLinks
			$Form
			$PageComments
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>