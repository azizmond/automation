require 'selenium-webdriver'

class Profiles

	def initialize agregar_perfiles
		@perfiles = agregar_perfiles
	end

	def add_profile
		puts "Seleccionar menú Administración"
		@perfiles.find_element(:link_text,"Perfiles").click
	end

	def create_profile
		puts "Presionar botón Crear Perfil"
		@perfiles.find_element(:link_text,"Crear Perfil").click
	end

	def profile_name= nombre_perfil
		puts "Ingresa nombre del perfil"
		@perfiles.find_element(:id,"core_commonbundle_useraccess_userProfile_name").send_keys nombre_perfil
	end

	def profile_description= desc_perfil
		puts "Ingresa descripción del perfil"
		@perfiles.find_element(:id,"core_commonbundle_useraccess_userProfile_description").send_keys desc_perfil
	end

	def permissions
		puts "Seleccionar permisos"
		@perfiles.find_element(:id,"select_CURRENCY").click
		sleep 2
	end

	def save_profile
		puts "Guardar"
		@perfiles.find_element(:css,"button.btn").click
	end

end