require_relative 'requirer'

def menu_tesoro
	@mVault = Tesoro.new(@browser)
	@mVault.tesoro_menu
end

def boton_crear_tesoro
	@cVault = CrearTesoro.new(@browser)
	@cVault.tesoro_boton_crear
end

def datos_tesoro valor, valor2, valor3
	@dVault = DatosTesoro.new(@browser)
	@dVault.tesoro_datos_codigo = valor
	@dVault.tesoro_datos_desc = valor2
	@dVault.tesoro_datos_tipo = valor3
	@dVault.tesoro_datos_boton
	sleep 1
end

def generar_dato_codigo (numero)
	charset = Array('A'..'Z')
	Array.new(numero) { charset.sample }.join	
end

menu_tesoro
boton_crear_tesoro
datos_tesoro generar_dato_codigo(6), "Descripcion General", "Billetes"