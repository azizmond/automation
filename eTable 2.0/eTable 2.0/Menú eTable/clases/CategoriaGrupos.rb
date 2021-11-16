require 'selenium-webdriver'

class CategoriaGrupos

	def initialize menu_categoriaGrupos
		@mCatGrupo = menu_categoriaGrupos
	end

	def categoria_grupos_menu
		puts "Seleccionar menu Categoria de Grupos"
		@mCatGrupo.find_element(:link_text,"Categoría de Grupos").click
	end

end