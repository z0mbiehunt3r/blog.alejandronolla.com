updateSizes = ->
	if $(window).width() >= 980
		$('.sidebar').height $(window).height()
	else
		$('.sidebar').height 'auto'

# Safari mobile addressbar fix
window.addEventListener "load", ->
	setTimeout ->
		window.scrollTo 0, 1
	, 0

# Sidebar height fix
window.addEventListener "resize", ->
	updateSizes()

###
window.addEventListener "load", ->
	$('.go-up').fadeOut();

	$(window).scroll ->
		if $(@).scrollTop > 100
			$('.go-up').fadeIn()
		else
			$('.go-up').fadeOut();

	$('.go-up a').click ->
		$('body, html').animate
			scrollTop: 0
		, 500
		false
###
window.updateSizes = updateSizes
