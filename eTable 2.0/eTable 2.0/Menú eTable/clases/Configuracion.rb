require 'selenium-webdriver'

class Configuracion

	def initialize menu_configuracion
		@configuracion = menu_configuracion
	end

	def configuracion_menu
		puts "Seleccionar menú Configuración"
		@configuracion.find_element(:id,"menu_configuration").click
		sleep 1
	end

end