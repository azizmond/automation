require 'selenium-webdriver'

class Movimientos

	def initialize menu_movimientos
		@movimientos = menu_movimientos
	end

	def movimientos_menu
		puts "Seleccionar menú Movimientos"
		@movimientos.find_element(:css,"#pit_boss_ul > li:nth-child(1) > a:nth-child(1)").click
	end

end