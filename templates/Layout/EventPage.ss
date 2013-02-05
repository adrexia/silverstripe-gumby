<div class="row">
	<% include Breadcrumbs %>
	<div class="span12">
		<div role="main">
			<h1>$Title</h1>
			<div class="span3 well well-small event-information">
				<h2 class="nonvisual-indicator">Event information</h2>
				<dl>
					<dt>Date &amp; time</dt>
					<dd><time datetime="$Date">$Date.nice</time></dd>
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
			<div class="span8">
				$Content.RichLinks
				$Form
				<p><a href="$Parent.Link">←  Back to the event listing</a></p>
				<% include RelatedPages %>
				$PageComments
				<% include PrintShare %>
			</div>
		</div>
		<% include LastEdited %>
	</div>
</div>

