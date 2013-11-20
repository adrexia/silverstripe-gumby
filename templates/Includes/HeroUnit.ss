<% if $Content %>
<div class="hero-unit row">
	<div class="columns twelve content" id="main" role="main">
	$Content.RichLinks
	<% if LearnMorePage %>
		<a class="btn primary metro medium" href="$LearnMorePage.Link">Learn more &raquo;</a>
	<% end_if %>
	</div>
</div>
<% end_if %>