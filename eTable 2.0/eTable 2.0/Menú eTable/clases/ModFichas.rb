require 'selenium-webdriver'

class ModFichas

	def initialize modif_ficha
		@modFicha = modif_ficha
	end

	def mod_fichas
		@modFicha.find_element(:css,"#disable_ARS025 > i:nth-child(1)").click
	end

end