<div class="row">
	<% include Breadcrumbs %>
	<div class="span3">
		<% include NewsCategories %>
	</div>
	<div class="span9 resultsList" role="main">
		<header class="page-header">
			<h1>$Title</h1>
		</header>
		<div class="clearfix">
			$Content.RichLinks
		</div>
	
		<% if NewsItems %>			
			<header class="resultsHeader">
				<h2 class="pull-left">Latest in <% if Category %>$Category.Title<% else %>$Title<% end_if %></h2>
				<p class="pull-right">Displaying $NewsItems.FirstItem - $NewsItems.LastItem of $NewsItems.count</p>
			</header>
		
			<% loop NewsItems %>
				<article class="$EvenOdd">
					<% include NewsItem %>
				</article>
			<% end_loop %>

			<% with NewsItems %>
				<% include Pagination %>
			<% end_with %>

		<% end_if %>
		
		$Form
		<% include RelatedPages %>
		$PageComments
		<% include PrintShare %>
	</div>
</div>