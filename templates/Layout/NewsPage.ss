<div class="row">
	<% include Breadcrumbs %>
	<div class="span3">
		<% with Parent %>
			<% include NewsCategories %>
		<% end_with %>
	</div>
	<div class="span9" role="main">
		<article>
			<header class="page-header">
				<h1>$Title</h1>
			</header>
			<p><% if Category %><a class="label label-inverse" href="">$Category.Title</a><% end_if %> <time datetime="$Date">$Date.nice</time></p>
			<div class="clearfix">
				$Content.RichLinks
			</div>
			$Form
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
		</article>
		<% include LastEdited %>
	</div>
</div>