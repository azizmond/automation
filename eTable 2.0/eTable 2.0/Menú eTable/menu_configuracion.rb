require_relative 'requirer'

def menu_configuracion
	@mConfiguracion = Configuracion.new(@browser)
	@mConfiguracion.configuracion_menu
end

menu_configuracion