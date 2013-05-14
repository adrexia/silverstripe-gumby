<div class="row">
	<div class="span12">
		<h1 class="page-header">$Title</h1>

		<div class="clearfix">
			$Content.RichLinks
		</div>
		$Form

		<% cached 'sitemap', List(SiteTree).max(LastEdited) %>
		<ul class="sitemap">
			<% loop Menu(1) %>
				<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
				<% include SitemapNode %>
				</li>
			<% end_loop %>
		</ul>
		<% end_cached %>

		$PageComments
	</div>
</div>
