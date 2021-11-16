require 'selenium-webdriver'

class DatosMesa

	def initialize datos_mesa
		@dMesa = datos_mesa
	end

	def cod_mesa= codigo_mesa
		puts "Ingresar Codigo de Mesa"
		@dMesa.find_element(:id,"code").send_keys codigo_mesa
	end

	def sel_MACAddress= macAddress
		puts "Ingresar MAC Address mesa"
		@dMesa.find_element(:id,"macaddress").send_keys macAddress
	end

	def sel_juego
		puts "Seleccion juego"
		tipo_juego = @dMesa.find_element(:id,'game')
			option = Selenium::WebDriver::Support::Select.new(tipo_juego)
				option.select_by(:value,"19")
	end

	def sel_divisa
		puts "Seleccion divisa"
		tipo_divisa = @dMesa.find_element(:id,'currency')
			option = Selenium::WebDriver::Support::Select.new(tipo_divisa)
				option.select_by(:value,"8")
	end

	def cod_puesto= puesto
		puts "Seleccion puesto"
		@dMesa.find_element(:id,"place").send_keys puesto
	end

	def porc_pago= porcentaje_pago
		puts "Seleccion porcentaje de pago"
		@dMesa.find_element(:id,"payment").send_keys porcentaje_pago
	end

	def banca_apertura= banca_apertura
		puts "Seleccion Banca de Apertura"
		@dMesa.find_element(:id,'relatedFacility').send_keys banca_apertura
	end

	def grupoC
		puts "Seleccion Grupo C"
		tipo_grupo_C = @dMesa.find_element(:id,'grupoc')
			option = Selenium::WebDriver::Support::Select.new(tipo_grupo_C)
				option.select_by(:value,"15")
	end

	def grupoAA
		puts "Seleccion AA"
		tipo_grupo_AA = @dMesa.find_element(:id,'aa')
			option = Selenium::WebDriver::Support::Select.new(tipo_grupo_AA)
				option.select_by(:value,"14")
	end

	def grupovip
		puts "Seleccion VIP"
		tipo_grupo_vip = @dMesa.find_element(:id,'vip')
			option = Selenium::WebDriver::Support::Select.new(tipo_grupo_vip)
				option.select_by(:value,"8")
	end

	def mesas_boton_guardar
		puts "Guardar"
		@dMesa.find_element(:id,"create_livegame").click
		sleep 2
	end

end