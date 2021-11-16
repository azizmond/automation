require 'selenium-webdriver'

class Floor

	def initialize agregar_salas
		@salas = agregar_salas
	end

	def floor_menu
		puts "Seleccionar menú Salas"
		@salas.find_element(:link_text,"Salas").click
	end

	def add_floor
		puts "Presionar botón Crear Sala"
		@salas.find_element(:css,"div.col-sm-12:nth-child(1) > a:nth-child(1)").click
	end

	def code_floor= codigo_sala
		puts "Ingresa código de la sala"
		@salas.find_element(:id,"corebundle_floor_code").send_keys codigo_sala
	end

	def floor_desc= desc_sala
		puts "Ingresa descripción de la sala"
		@salas.find_element(:id,"corebundle_floor_description").send_keys desc_sala
	end

	def floor_ip= ip_sala
		puts "Ingresa IP"
		@salas.find_element(:id,"corebundle_floor_ip").send_keys ip_sala
		sleep 1
	end

	def save_floor
		puts "Guardar"
		@salas.find_element(:css,"button.btn").click
		sleep 5
	end

end