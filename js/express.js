(function($) {
	$(document).ready(function() {
		$('.nav-collapse')
			.addClass('collapse')
			.addClass('collapsed')
			.on('hidden', function(){
				$(this).addClass('collapsed');
				$(this).siblings('button').attr('aria-expanded', 'false');
			})
			.on('show', function(){
				$(this).removeClass('collapsed');
				$(this).siblings('button').attr('aria-expanded', 'true');
			});

		$('.navbar a .showChildren').click(function(e) {
			e.preventDefault();
			var oldOpen = $('.navbar .open');		
			$(this).closest('li').addClass('open');
			oldOpen.removeClass('open');
			return false;
		});

		// Don't let the Go! button submit the search form if it's empty.
		$('#SearchGroup input[type="submit"]').click(function(){
			var searchInput = $(this).siblings('input[type="search"]');
			var searchValue = $.trim(searchInput.val());
			if (searchValue.length == 0) {
				searchInput.focus();
				return false;
			}
		});

		$('form fieldset > div.field:odd').addClass('odd');

		$('.sitemap').on('click', '.button', function() {
			var self = $(this);
			var target = $(self.attr('data-target'));

			// only do an ajax request if the content isn't loaded
			if(target.html().length == 0) {
				self.addClass('loading');

				$.ajax({
					url: self.attr('href'),
					data: { ajax: true }
				}).done(function(data) {
					target.html(data);
					self.removeClass('loading');
				});
			}

			self.toggleClass('open');

			if(self.hasClass('open')) {
				target.removeClass('collapse').addClass('collapsed');
			} else {
				target.removeClass('collapsed').addClass('collapse');
			}

			return false;
		});

		$('#print-placeholder').replaceWith('<button type="button" onclick="window.print(); return false;">Print</button>');

		// Carousel on the homepage.
		$('.carousel').carousel({
			interval: 8000,
			pause: ""
		});

		$('.carousel').on('click','button.pause',function(){
			if($(this).closest('.carousel').hasClass('play')){
				$(this).closest('.carousel').carousel('cycle').removeClass('play');
				$(this).find('.icon').removeClass('icon-play-js').html('&#xf04c;');
			}else{
				$(this).closest('.carousel').carousel('pause').addClass('play');
				$(this).find('.icon').addClass('icon-play-js').html('&#xf04b;');
			}
		});
	})
})(jQuery);
