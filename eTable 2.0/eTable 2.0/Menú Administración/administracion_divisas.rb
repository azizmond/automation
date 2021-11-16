require_relative 'requirer'

def menu_crear_divisas
	@menuAdmin = Currency.new(@browser)
	@menuAdmin.add_currency
	@menuAdmin.create_currency
end

def codigo_divisa valor, valor2
	@menuAdmin.currency_code = valor
	@menuAdmin.currency_name = valor2
	@menuAdmin.save_currency
end


menu_crear_divisas
codigo_divisa "UYU", "Peso Uruguayo"