<div class="row">
	<% include Breadcrumbs %>
	<div class="span3">
		<% with Parent %>
			<% include NewsCategories %>
		<% end_with %>
	</div>
	<div class="span9" role="main">
		<h1 class="page-header">$Title</h1>

		<p><% if Category %><a class="label label-inverse" href="">$Category.Title</a><% end_if %> <time datetime="$Date">$Date.nice</time></p>
		<div class="clearfix">
			$Content.RichLinks
		</div>
		$Form
		<% include RelatedPages %>
		$PageComments
		<% include PrintShare %>
		<% include LastEdited %>
	</div>
</div>
