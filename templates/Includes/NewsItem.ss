<header>
	<h4><a href="$Link">$Title</a></h4>
</header>
<p class="meta-data">
	<% if Category %>
		<a class="label label-inverse" href="$Category.Link">$Category.Title</a>
	<% end_if %> 
	<time datetime="$Date">$Date.nice</time>
</p>
<p>
<% if Abstract %>
	$Abstract
<% else %>
	$Content.LimitWordCount
<% end_if %>
</p>