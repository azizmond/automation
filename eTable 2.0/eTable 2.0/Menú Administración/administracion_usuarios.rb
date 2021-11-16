require_relative 'requirer'

def menu_usuario
	@menuUser = AddUsers.new(@browser)
	@menuUser.adm_add_user
	@menuUser.create_user
end

def datos_usuario valor, valor2, valor3, valor4
	@menuUser.user_data = valor
	@menuUser.user_pass = valor2
	@menuUser.first_name = valor3
	@menuUser.last_name = valor4
	@menuUser.profile_type
	@menuUser.save_user
end

def generar_dato_codigo (numero)
	charset = Array('a'..'z')
	Array.new(numero) { charset.sample }.join	
end

def password
	add_pass = Array.new
		password = add_pass << SecureRandom.alphanumeric(5) << rand(11..99) << "**"
	password.join
end

menu_usuario
datos_usuario generar_dato_codigo(6), password, "Andrés", "Zizmond"