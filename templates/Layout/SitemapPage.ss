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

				<ul class="sitemap">
					<% if SelectedPage %>
						<% loop SelectedPage.Children %>
						<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
							<% include SitemapNode %>
						</li>
						<% end_loop %>
					<% else %>
						<% loop Menu(1) %>
						<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
							<% include SitemapNode %>
						</li>
						<% end_loop %>
					<% end_if %>
				</ul>

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

