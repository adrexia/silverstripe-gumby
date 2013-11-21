<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<% if Menu(2) %>
			<% include SecondaryMenu %>
		<% end_if %>
		<div class="columns <% if Menu(2) %>nine<% else %>twelve<% end_if %>">
			<div class="main typography" role="main" id="main">
				<h1 class="page-header">$Title</h1>
				$Content.RichLinks
				$Form
				<% include RelatedPages %>
				$PageComments
			</div>
			<footer class="content-footer columns twelve">
				<% include PrintShare %>
				<% include LastEdited %>
			</footer>
		</div>
	</div>
</div>
