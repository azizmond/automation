require 'securerandom'
require_relative 'requirer'

def menu_mesas
	@mMesas = Mesas.new(@browser)
	@mMesas.mesas_menu
end

def boton_crear_mesa
	@cMesas = CrearMesas.new(@browser)
	@cMesas.mesas_boton_crear
end

def datos_mesas valor, valor2, valor3, valor4, valor5
	@dMesas = DatosMesa.new(@browser)
	@dMesas.cod_mesa = valor
	@dMesas.sel_MACAddress = valor2
	@dMesas.sel_juego
	@dMesas.sel_divisa
	@dMesas.cod_puesto = valor3
	@dMesas.porc_pago = valor4
	@dMesas.banca_apertura = valor5
	@dMesas.grupoC
	@dMesas.grupoAA
	@dMesas.grupovip
	@dMesas.mesas_boton_guardar
end

def generar_dato_codigo(numero)
	charset = Array('A'..'Z')
	Array.new(numero) { charset.sample }.join	
end

def mac_address
	cont_mac = 0
	add_mac = Array.new
		while cont_mac < 6
			add_mac << SecureRandom.hex(1)
			cont_mac = cont_mac + 1
		end
	mac_address = add_mac.join ":"
end

menu_mesas
boton_crear_mesa
datos_mesas generar_dato_codigo(6), mac_address, "12", "12", "test"