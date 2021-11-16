require 'selenium-webdriver'

class CrearFicha

	def initialize crear_ficha
		@cFicha = crear_ficha
	end

	def fichas_boton
		@cFicha.find_element(:id,"create").click
	end

end