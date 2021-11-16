require_relative 'requirer'

def menu_categoria_grupos
	@mCatGrupo = CategoriaGrupos.new(@browser)
	@mCatGrupo.categoria_grupos_menu
end

def boton_crear_CategoriaGrupos
	@cCatGrupo = CrearCategoriaGrupos.new(@browser)
	@cCatGrupo.categoriaGrupos_boton_crear
end

def datos_CategoriaGrupos valor, valor2
	@dCatGrupo = DatosCategGrupos.new(@browser)
	@dCatGrupo.categoriaGrupos_codigo = valor
	@dCatGrupo.categoriaGrupos_desc = valor2
	@dCatGrupo.tesoro_datos_boton
end

def generar_dato_codigo (numero)
	charset = Array('A'..'Z')
	Array.new(numero) { charset.sample }.join	
end

menu_categoria_grupos
boton_crear_CategoriaGrupos
datos_CategoriaGrupos generar_dato_codigo(6), "Descripcion General"

