<header>
	<h4><a href="$Link">$Title</a></h4>
</header>

<% if $Date %>
	<p class="meta-data">
		<time datetime="$Date">$Date.Format(d/m/Y) <% if $StartTime %>$StartTime.Nice <% if $EndTime %>- $EndTime.Nice <% end_if %><% end_if %></time>
	</p>
<% end_if %>

<p>
<% if Abstract %>
	$Abstract
<% else %>
	$Content.LimitWordCount
<% end_if %>
</p>