<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<div class="columns three">
			<div class="update-information filter">
				<h2 class="nonvisual-indicator">News item information</h2>
				<% include UpdateInfo %>
			</div>
		</div>
		<div class="columns nine">
			<div id="main" class="main" role="main">
				<h1 class="page-header">$Title</h1>	
				<% if FeaturedImage %>
					<figure class="featured-image right">
						$FeaturedImage.SetWidth(300)
					</figure>
				<% end_if %>
				$Content.RichLinks
				$Form
				
				<% include RelatedPages %>
				$PageComments
			</div>
			<footer class="content-footer columns twelve">
				<p class="pull-left"><a href="$Parent.Link">←  Back to the news</a></p>
				<% include PrintShare %>
				<% include LastEdited %>
			</footer>
		</div>
	</div>
</div>

