require 'selenium-webdriver'

class AddUsers 

	def adm_add_user
		@usuarios.find_element(:id,"sm_user").click
	end

	def create_user
		puts "Presionar boton Crear Usuario"
		@usuarios.find_element(:id,"btn_add").click
	end

	def user_data= nombre_nuevo_usuario
		puts "Ingresar nombre de usuario"
		@usuarios.find_element(:id,"core_commonbundle_user_username").send_keys nombre_nuevo_usuario
	end

	def user_pass= contrasena_nuevo_usuario
		puts "Ingresar nueva contraseña"
		@usuarios.find_element(:id,"core_commonbundle_user_password").send_keys contrasena_nuevo_usuario
	end

	def first_name= nombre
		puts "Ingresar nombre"
		@usuarios.find_element(:id,"core_commonbundle_user_firstName").send_keys nombre
	end

	def last_name= apellido
		puts "Ingresar apellido"
		@usuarios.find_element(:id,"core_commonbundle_user_lastName").send_keys apellido
	end

	def profile_type
		tipo_perfil = @usuarios.find_element(:id,'core_commonbundle_user_userProfile')
			option = Selenium::WebDriver::Support::Select.new(tipo_perfil)
				option.select_by(:value,"22")
	end

	def save_user
		puts "Guardar usuario"
		@usuarios.find_element(:id,"save").click
		sleep 1
	end

end