<nav role="navigation">
	<% include MainNav %>
	<% include Breadcrumbs %>
</nav>

<div class="container typography" id="layout">
	<div class="row">
		<div class="span3">
			<% include NewsCategories %>
		</div>
		<div class="span9 resultsList" role="main">
			<header class="page-header">
				<h1>$Title</h1>
			</header>
			$Content.RichLinks
		
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
			$PageComments
			<% include PrintShare %>
		</div>
	</div>
	<hr />
</div>