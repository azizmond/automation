require 'selenium-webdriver'

class DatosTesoro

	def initialize datos_tesoro
		@dTesoro = datos_tesoro
	end

	def tesoro_datos_codigo= codigo
		puts "Ingresar codigo Tesoro"
		@dTesoro.find_element(:id,"etable_floor_bundle_vault_code").send_keys codigo
	end

	def tesoro_datos_desc= descripcion
		puts "Ingresar descripcion Tesoro"
		@dTesoro.find_element(:id,"etable_floor_bundle_vault_description").send_keys descripcion
	end

	def tesoro_datos_tipo= tipo
		puts "Ingresar tipo de Tesoro"
		@dTesoro.find_element(:id,"etable_floor_bundle_vault_type").send_keys tipo
	end

	def tesoro_datos_boton
		puts "Guardar"
		@dTesoro.find_element(:id,"create").click
	end

end