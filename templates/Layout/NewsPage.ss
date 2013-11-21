<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<div class="columns three">
			<div class="update-information filter">
				<h2 class="nonvisual-indicator">News item information</h2>
				<dl>
					<% if $Date %>
						<dt>Date</dt>
						<dd><time datetime="$Date">$Date.Nice</time></dd>
					<% end_if %>
					<% if Author %>
						<dt>Author:</dt>
						<dd>$Author</dd>
					<% end_if %>
					<% if Terms %>
						<dt>Tags</dt>
						<dd>
							<ul class="unstyled update-tags">
								<% loop Terms %>
									<li class="label default">$Name</li>
								<% end_loop %>
							</ul>
						</dd>
					<% end_if %>
				</dl>
			</div>
		</div>
		<div class="columns nine">
			<div id="main" role="main">
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

