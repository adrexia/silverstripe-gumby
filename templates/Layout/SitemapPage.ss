<div class="row">
	<div class="span12">
		<h1 class="page-header">$Title</h1>

		<div class="clearfix">
			$Content.RichLinks
		</div>
		$Form

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

		$PageComments
	</div>
</div>
