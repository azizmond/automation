require_relative 'requirer'

def menu_administracion
	@menuAdmin = Administration.new(@browser)
	@menuAdmin.administration_menu
end

menu_administracion