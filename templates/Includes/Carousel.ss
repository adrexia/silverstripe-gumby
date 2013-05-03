<% if $VisibleCarouselItems %>
	<div id="myCarousel" class="carousel slide">
		<!-- Carousel items -->
		<div class="carousel-inner">
			<% loop $VisibleCarouselItems %>
				<div class="<% if First %>active <% end_if %>item">
					<a<% if Link %> href="$Link.Link"<% end_if %>>
						$Image.CroppedImage(710, 503)
						<% if Caption %>
							<div class="carousel-caption">
								<% if Title %>
									<h4>$Title</h4>
								<% end_if %>
								<p>$Caption</p>
							</div>
						<% end_if %>
					</a>
				</div>
			<% end_loop %>
		</div>
		<% if $VisibleCarouselItems.Count > 1 %>
			<div class="carousel-interface">
				<div class="carousel-indicators">
					<% loop $VisibleCarouselItems %>
						<button class="carousel-control<% if $Pos == 1 %> active<% end_if %>" data-slide-to="$Pos(0)" data-target="#myCarousel" tabindex="0">$Pos</button>
					<% end_loop %>
				</div>
				<div class="carousel-controls">
					<button class="left" href="#myCarousel" data-slide="prev" tabindex="0"><i class="icon-chevron-left"></i></button>
					<button class="pause" tabindex="0"><span class="icon">&#xf04c;</span></button>
					<button class="right" href="#myCarousel" data-slide="next" tabindex="0"><i class="icon-chevron-right"></i></button>
				</div>
			</div>
		<% end_if %>
	</div>
<% end_if %>