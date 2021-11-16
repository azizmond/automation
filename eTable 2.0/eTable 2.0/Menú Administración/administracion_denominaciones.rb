require_relative 'requirer'

def menu_denominaciones
	@menuDenominaciones = Denomination.new(@browser)
	@menuDenominaciones.deno_menu
	@menuDenominaciones.add_deno
end

def valor_denominacion valor
	@menuDenominaciones.deno_value = valor
	@menuDenominaciones.deno_type
	@menuDenominaciones.enable_deno
	@menuDenominaciones.save_deno
end


menu_denominaciones
valor_denominacion "25"