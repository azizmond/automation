require 'selenium-webdriver'

class Ajuste_Movimientos

	def initialize retref
		@movimientos = retref
	end

	def boton_retiro
		@movimientos.find_element(:id,"withdrawal").click
	end

	def boton_refuerzo
		@movimientos.find_element(:id,"reinforcement").click
	end

	def boton_atras
		@movimientos.find_element(:id,"back").click
	end

end