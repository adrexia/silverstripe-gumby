<div class="abstract<% if FeaturedImage %> has-image<% end_if %>">
	<header>
		<h4><a href="$Link">$Title</a></h4>
	</header>
	<p class="meta-data">
		<% if Category %>
			<a class="label label-inverse" href="$Category.Link">$Category.Title</a>
		<% end_if %> 
		<% if $Date %>
			<time datetime="$Date">$Date.nice <% if $StartTime %>$StartTime.Nice <% end_if %>
			</time>
		<% end_if %>
		<% if Author %>by $Author<% end_if %>
	</p>
	<p>
	<% if Abstract %>
		$Abstract
	<% else %>
		$Content.LimitWordCount
	<% end_if %>
	</p>
</div>
<% if FeaturedImage %>
	<figure class="featured-image">
		$FeaturedImage.SetHeight(150)
	</figure>
<% end_if %>