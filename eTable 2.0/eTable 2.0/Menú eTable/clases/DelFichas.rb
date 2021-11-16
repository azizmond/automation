require 'selenium-webdriver'

class DelFichas

	def initialize del_ficha
		@delFicha = del_ficha
	end

	def delete_fichas
		puts "Eliminar ficha"
		@delFicha.find_element(:css,"#delete_ARS025 > p:nth-child(1)").click
		sleep 3
	end

end