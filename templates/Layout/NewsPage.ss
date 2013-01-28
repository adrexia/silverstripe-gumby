<div class="row">
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
			$Content.RichLinks
			$Form
			$PageComments
			<% include PrintShare %>
		</article>
		<% include LastEdited %>
	</div>
</div>