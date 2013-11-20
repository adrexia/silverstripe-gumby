<% if VisibleCarouselItems %>
<h2 class="nonvisual-indicator">Image slider, use keyboard to navigate</h2>
<div class="slider-wrap flexslider">
	<ul class="slides">
		<% loop VisibleCarouselItems %>
			<li class="$FirstLast slide-{$Pos} <% if First %>flex-active-slide<% end_if %>">
				<% if Link %><a href="$Link.Link" class="slide-link"><% end_if %>
					<div class="image-wrap">
						<img src="$Image.URL" alt="$Caption.LimitCharacters(255)">
					</div> 

					<% if Caption %>
					<div class="text">
						<% if Title %>
						<h4>$Title</h4>
						<% end_if %>
						<p>$Caption.LimitCharacters(255)</p>
					</div>
					<% end_if %>
				<% if Link %></a><% end_if %>
			</li>
		<% end_loop %>
	</ul>
</div>
<% end_if %>