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
						<button class="carousel-control<% if $Pos == 1 %> active<% end_if %>" data-slide-to="$Pos(0)" data-target="#myCarousel" tabindex="0" name="Carousel item $Pos">Carousel item $Pos</button>
						
					<% end_loop %>
				</div>
				<div class="carousel-controls">
					<button class="left" href="#myCarousel" data-slide="prev" tabindex="0" type="button" name="Previous">
						<i class="icon-chevron-left" aria-hidden="true"></i>
						<span class="nonvisual-indicator">Previous</span>
					</button>
					<button class="pause" tabindex="0" type="button" name="Pause">									<span class="icon" aria-hidden="true">&#xf04c;</span>
						<span class="nonvisual-indicator">Pause</span>
					</button>
					<button class="right" href="#myCarousel" data-slide="next" tabindex="0" type="button" name="Next">
						<i class="icon-chevron-right" aria-hidden="true"></i>
						<span class="nonvisual-indicator">Next</span>
					</button>
				</div>
			</div>
		<% end_if %>
	</div>
<% end_if %>
