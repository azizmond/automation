require 'selenium-webdriver'

class Etable

	def initialize menu_etable
		@etable = menu_etable
	end

	def etable_menu
		puts "Seleccionar menú eTable"
		@etable.find_element(:css,"#menu_etable > span:nth-child(2)").click
	end

end