require 'selenium-webdriver'

class CrearCategoriaGrupos

	def initialize crear_categoriaGrupos
		@cCategoriaGrupos = crear_categoriaGrupos
	end

	def categoriaGrupos_boton_crear
		puts "Presionar boton Crear Categoria de Grupos"
		@cCategoriaGrupos.find_element(:link_text,"Crear Categoría de Grupos").click
	end

end