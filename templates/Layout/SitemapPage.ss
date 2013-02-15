<div class="row">
	<div class="span12">
		<header class="page-header">
			<h1>$Title</h1>
		</header>
		<div class="clearfix">
			$Content.RichLinks
		</div>
		$Form

		<ul class="sitemap">
			<% loop Menu(1) %>
				<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
				<% include SitemapNode %>
				</li>
			<% end_loop %>
		</ul>

		$PageComments
	</div>
</div>