require_relative 'requirer'

def menu_perfiles
	@menuAdmin = Profiles.new(@browser)
	@menuAdmin.add_profile
end

def crear_perfil valor, valor2
	@menuAdmin.create_profile
	@menuAdmin.profile_name = valor
	@menuAdmin.profile_description = valor2
	@menuAdmin.permissions
	@menuAdmin.save_profile
end


menu_perfiles
crear_perfil "perfil_prueba", "Prueba de Perfil Nuevo"
