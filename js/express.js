/*jslint browser: true*/
/*global $, jQuery*/

jQuery(function($) {
	"use strict";

	/*
	 * Function refreshes the pseudo tags. Is used by IE8 to 
	 * avoid the problem where the fonts load after the css has been parsed
	 */
	function getFontFixStyleElement() {
		var style = $('#FontFixStyleElement');
		if (!style.length) {
			style = $(
				'<style type="text/css" id="FontFixStyleElement" disabled="disabled">'+
				':before,:after{content:none !important}'+
				'</style>'
			).appendTo('head');
		}
		return style;
	}

	/* 
	 * Fix for IE8 when using webfonts. See:
	 * http://stackoverflow.com/questions/9809351/ie8-css-font-face-fonts-only-working-for-before-content-on-over-and-sometimes
	 */
	if ($.browser.msie && 8 === parseInt($.browser.version, 10)) {
		$(window).on('load', function() {
			getFontFixStyleElement().removeAttr('disabled');
			setTimeout(function(){ getFontFixStyleElement().attr('disabled', 'disabled'); }, 0);
		});
	}

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

	// SITEMAP
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
			$(this).attr('aria-expanded', 'true');
			$(this).children('.linkText').replaceWith('<span class="linkText">Collapse section</span>');
		} else {
			target.removeClass('collapsed').addClass('collapse');
			$(this).attr('aria-expanded', 'false');
			$(this).children('.linkText').replaceWith('<span class="linkText">Expand section</span>');
		}

		return false;
	});

	$('#print-placeholder').replaceWith('<a role="button" onclick="window.print(); return false;"><i class="icon-print icon-dark" aria-hidden="true"></i>Print</a>');


	// Homepage Carousel
	$('.flexslider').flexslider({
		useCSS: true,
		pauseOnHover: true,
		controlNav: true,
		directionNav: true,
		slideshowSpeed: 7000,
		smoothHeight: true
	});

	// Add additional title information to external links which open in an external window
	$('.content a[target="_blank"]').attr("title", $('a[target="_blank"]').attr("title")+" - This link will open in a new window");
	
	// Maori language class to add lang type
	$('.maori').attr('lang', 'mi');

	// Customize validation for user forms. Accessibility fixes
	var siteForm = $('.UserDefinedForm #Form_Form');
	if (siteForm.length > 0) {
		
		// Set up validation.
		siteForm.validate({
			errorPlacement: function(error, element) {
				var errorId = element.attr('id') + '_message';
				//prevent duplicate labels
				element.closest('div.field').find('label .error').remove();
				error.appendTo(element.closest('div.field'));
				//Make valid html and adjust attributes
				error.removeAttr('for').addClass('message').attr('id', errorId);
				//Link error to input
				element.attr('aria-describedby', errorId);
			},
			errorElement: 'span'
		});

		if(siteForm.find('.requiredField').length > 0){
			siteForm.prepend('<p class="req-indicator-message">Required fields are marked</p>');
		}
	}
});

