require_relative 'requirer'

def menu_fichas
	@mFichas = Fichas.new(@browser)
	@mFichas.fichas_menu

end

def boton_crear_ficha
	@cFichas = CrearFicha.new(@browser)
	@cFichas.fichas_boton

end

def datos_ficha valor, valor2, valor3,valor4,valor5
	@dFichas = DatosFicha.new(@browser)
	@dFichas.cod_iso = valor
	@dFichas.sel_divisa = valor2
	@dFichas.sel_denominacion = valor3
	@dFichas.color_ficha = valor4
	@dFichas.sel_denominacion = valor5
	@dFichas.nueva_ficha
end

def generate_code(number)
	charset = Array('A'..'Z')
	Array.new(number) { charset.sample }.join
end

menu_fichas
boton_crear_ficha
datos_ficha generate_code(3), "INR", "5", "turquesa-violeta-rosa", "CHIP"