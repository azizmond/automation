require 'selenium-webdriver'

class DatosFicha

	def initialize datos_ficha
		@dFicha = datos_ficha
	end

	def cod_iso= codigo_iso
		@dFicha.find_element(:id,"etable_floor_bundle_chip_code").send_keys codigo_iso
	end

	def sel_divisa= divisa
		@dFicha.find_element(:id,"currency").send_keys divisa
	end

	def sel_denominacion= deno
		@dFicha.find_element(:id,"denomination").send_keys deno
	end

	def color_ficha= color
		@dFicha.find_element(:id,"etable_floor_bundle_chip_colour").send_keys color
	end

	def tipo_ficha= tipo
		@dFicha.find_element(:id,"etable_floor_bundle_chip_type").send_keys tipo
	end

	def nueva_ficha
		@dFicha.find_element(:id,"create").click
		sleep 1
	end

end