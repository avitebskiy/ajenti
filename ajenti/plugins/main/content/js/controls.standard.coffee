class window.Controls.hc extends window.Control
	createDom: () ->
		@dom = $("""
			<div class="control hc"></div>
		""")
		@childContainer = @dom

	wrapChild: (child) ->
		return $('<div></div>').append(child.dom)

class window.Controls.vc extends window.Control
	createDom: () ->
		@dom = $("""
			<div class="control vc"></div>
		""")
		@childContainer = @dom

	wrapChild: (child) ->
		return $('<div></div>').append(child.dom)

class window.Controls.label extends window.Control
	createDom: () ->
		@dom = $("""<span class="control label">#{@properties.text}</span>""")


class window.Controls.button extends window.Control
	createDom: () ->
		@dom = $("""<a href="#" class="control button style-#{@properties.style}">#{@properties.text}</a>""")
		@dom.click (e) =>
			@event 'click'
			e.preventDefault()

