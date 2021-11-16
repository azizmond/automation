require 'selenium-webdriver'

class Mesas

	def initialize menu_mesas
		@mMesas = menu_mesas
	end

	def mesas_menu
		puts "Seleccionar menú Mesas"
		@mMesas.find_element(:link_text,"Mesas").click
	end

end