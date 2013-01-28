<nav role="navigation">
	<% include MainNav %>
</nav>

<div class="container typography" id="layout">
	<div class="row">
		<div class="span12">
			<h2>$Title</h2>
			$Content.RichLinks
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
	<hr />
</div>