<div class="row">
	<% include Breadcrumbs %>
	<div role="main">
		<div class="span3">
			<div class="well event-information">
				<h2 class="nonvisual-indicator">Event information</h2>
				<dl>
					<dt>Date &amp; time</dt>
					<dd><time datetime="$Date">$Date.Nice</time></dd>
					<% if Terms %>
						<dt>Tags</dt>
						<dd>
							<ul class="unstyled event-tags">
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
			<h1>$Title</h1>
			$Content.RichLinks
			$Form
			<p><a href="$Parent.Link">←  Back to the event listing</a></p>
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>

