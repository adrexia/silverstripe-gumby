<div class="row">
	<% include Breadcrumbs %>
	<div id="main" role="main">
		<div class="span3">
			<div class="well update-information">
				<h2 class="nonvisual-indicator">News item information</h2>
				<dl>
					<dt>Date</dt>
					<dd><time datetime="$Date">$Date.Nice</time></dd>
					<% if Author %>
						<dt>Author:</dt>
						<dd>$Author</dd>
					<% end_if %>
					<% if Terms %>
						<dt>Tags</dt>
						<dd>
							<ul class="unstyled update-tags">
								<% loop Terms %>
									<li class="label">$Name</li>
								<% end_loop %>
							</ul>
						</dd>
					<% end_if %>
				</dl>
			</div>
		</div>
		<div class="span9">
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				<% if FeaturedImage %>
					<figure class="featured-image">
						$FeaturedImage.SetWidth(300)
					</figure>
				<% end_if %>
				$Content.RichLinks
			</div>
			$Form
			<p><a href="$Parent.Link">←  Back to the news</a></p>
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
			<% include LastEdited %>
		</div>
	</div>
</div>

