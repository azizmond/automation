require 'selenium-webdriver'

class Tesoro

	def initialize menu_tesoro
		@mTesoro = menu_tesoro
	end

	def tesoro_menu
		puts "Seleccionar menu Tesoro"
		@mTesoro.find_element(:link_text,"Tesoros").click
	end

end