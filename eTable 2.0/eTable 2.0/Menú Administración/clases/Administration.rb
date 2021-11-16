require 'selenium-webdriver'

class Administration

	def initialize menu_administracion
		@admin = menu_administracion
	end

	def administration_menu
		puts "Seleccionar menú Administración"
		@admin.find_element(:css,"#menu_config > span:nth-child(2)").click
	end

end