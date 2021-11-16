require_relative 'requirer'

def menu_fichas
	@mFichas = Fichas.new(@browser)
	@mFichas.fichas_menu
end

def eliminar_fichas
	@delFichas = DelFichas.new(@browser)
	@delFichas.delete_fichas
end

menu_fichas
eliminar_fichas