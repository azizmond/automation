require 'selenium-webdriver'

class CrearTesoro

	def initialize crear_tesoro
		@cTesoro = crear_tesoro
	end

	def tesoro_boton_crear
		puts "Presionar boton Crear Tesoro"
		@cTesoro.find_element(:id,"create_vault").click
	end

end