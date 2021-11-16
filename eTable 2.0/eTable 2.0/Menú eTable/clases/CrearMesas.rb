require 'selenium-webdriver'

class CrearMesas

	def initialize crear_mesas
		@cMesas = crear_mesas
	end

	def mesas_boton_crear
		puts "Presionar boton Crear Mesas"
		@cMesas.find_element(:id,"create_livegame").click
	end

end