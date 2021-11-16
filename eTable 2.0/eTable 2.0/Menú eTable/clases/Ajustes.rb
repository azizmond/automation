require 'selenium-webdriver'

class Ajustes

	def initialize menu_ajustes
		@ajustes = menu_ajustes
	end

	def ajustes_menu
		puts "Seleccionar menú Ajustes"
		@ajustes.find_element(:link_text,"Ajustes").click
	end

end