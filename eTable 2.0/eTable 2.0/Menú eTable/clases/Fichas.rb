require 'selenium-webdriver'

class Fichas

	def initialize menu_fichas
		@mFichas = menu_fichas
	end

	def fichas_menu
		puts "Seleccionar menú Fichas"
		@mFichas.find_element(:link_text,"Fichas").click
	end

end