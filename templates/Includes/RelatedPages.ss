<% if RelatedPages %>
	<h2>Related Pages:</h2>
	<p>
		<ul>
			<% loop RelatedPages %>
				<li><a href="$Link">$Title</a></li>
			<% end_loop %>
		</ul>
	</p>
<% end_if %>