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

		$('.carousel').carousel({
			interval: 8000,
			pause: ''
	    });

	    $('.carousel').on('click','#pause .btn', function() {
	    	if($(this).closest('.carousel').hasClass('play')) {
	    		$(this).closest('.carousel').carousel('cycle').removeClass('play');
	    		$(this).find('.icon').removeClass('icon-play-js').html('&#xf04c;');
	    	} else {
	    		$(this).closest('.carousel').carousel('pause').addClass('play');
	    		$(this).find('.icon').addClass('icon-play-js').html('&#xf04b;');
	    	}	    	
	    });

		$('.navbar a .showChildren').click(function(e) {
			e.preventDefault();
			var oldOpen = $('.navbar .open');		
			$(this).closest('li').addClass('open');
			oldOpen.removeClass('open');
			return false;
		});

		$('form fieldset > div.field:odd').addClass('odd');

		$('.page-toggle .button').click(function() {
			$(this).toggleClass('open');
			$(this).closest('li').toggleClass('open');
		});

		$('#print-placeholder').replaceWith('<button type="button" onclick="window.print(); return false;">Print</button>');
	})
})(jQuery);
