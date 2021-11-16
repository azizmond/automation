require 'selenium-webdriver'

class DatosCategGrupos

	def initialize datos_categ_grupos
		@dCategoriaGrupos = datos_categ_grupos
	end

	def categoriaGrupos_codigo= codigo
		puts "Ingresar codigo Categoria de Grupos"
		@dCategoriaGrupos.find_element(:id,"etablebundle_groupcategory_code").send_keys codigo
	end

	def categoriaGrupos_desc= descripcion
		puts "Ingresar descripcion Categoria de Grupos"
		@dCategoriaGrupos.find_element(:id,"etablebundle_groupcategory_description").send_keys descripcion
	end

	def tesoro_datos_boton
		puts "Guardar"
		@dCategoriaGrupos.find_element(:css,"button.btn").click
		sleep 1
	end

end