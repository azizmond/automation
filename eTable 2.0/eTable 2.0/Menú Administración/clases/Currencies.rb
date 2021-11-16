require 'selenium-webdriver'

class Currency

	def initialize agregar_divisas
		@divisas = agregar_divisas
	end

	def add_currency
		puts "Menú Divisas"
		@divisas.find_element(:link_text,"Divisas").click
	end

	def create_currency
		puts "Presionar botón Crear Divisa"
		@divisas.find_element(:link_text,"Crear Divisa").click
	end

	def currency_code= codigo_divisa
		puts "Ingresa código ISO divisa"
		@divisas.find_element(:id,"corebundle_currency_code").send_keys codigo_divisa
	end

	def currency_name= nombre_divisa
		puts "Ingresa nombre divisa"
		@divisas.find_element(:id,"corebundle_currency_name").send_keys nombre_divisa
	end

	def save_currency
		puts "Guardar"
		@divisas.find_element(:css,"button.btn").click
		sleep 1
	end

end