require_relative 'requirer'

def menu_salas
	@menuSala = Floor.new(@browser)
	@menuSala.floor_menu
end

def agregar_sala valor, valor2, valor3
	@menuSala.add_floor
	@menuSala.code_floor = valor
	@menuSala.floor_desc = valor2
	@menuSala.floor_ip = valor3
	@menuSala.save_floor
end

def generar_codigo_sala(numero)
	charset = Array.new('A'..'Z')
	Array.new(numero) { charset.sample }.join	
end


menu_salas
agregar_sala
codigo_sala generar_codigo_sala(3), "Descripcion Sala", "127.0.0.4"