require 'selenium-webdriver'

class Denomination

	def initialize agregar_denominaciones
		@denominacion = agregar_denominaciones
	end

	def deno_menu
		puts "Seleccionar menú Denominaciones"
		@denominacion.find_element(:link_text,"Denominaciones").click
	end

	def add_deno
		puts "Presionar botón Crear Denominación"
		@denominacion.find_element(:css,"div.col-md-12:nth-child(1) > a:nth-child(1)").click
	end

	def deno_value= valor_denominacion
		puts "Ingresa valor de la Denominación"
		@denominacion.find_element(:id,"corebundle_denomination_value").send_keys valor_denominacion
	end

	def deno_type
		puts "Ingresa tipo de divisa"
		tipoDivisa = @denominacion.find_element(:id,"corebundle_denomination_currency")
			option = Selenium::WebDriver::Support::Select.new(tipoDivisa)
				option.select_by(:value,"11")
	end

	def enable_deno
		puts "Habilitar"
		@denominacion.find_element(:id,"corebundle_denomination_isEnable").click
	end

	def save_deno
		puts "Guardar"
		@denominacion.find_element(:css,"button.btn-primary").click
		sleep 1
	end

end