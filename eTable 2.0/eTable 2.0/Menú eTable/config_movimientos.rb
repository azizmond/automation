require_relative 'requirer'

def menu_ajustes
	@mAjustes = Ajustes.new(@browser)
	@mAjustes.ajustes_menu
end

def menu_movimientos
	@mMovimientos = Movimientos.new(@browser)
	@mMovimientos.movimientos_menu
end

def menu_ajustes_movimientos
	@mAjusteMovimiento = Ajuste_Movimientos.new(@browser)

		begin

			puts "Ingrese movimiento a visualizar (retiro/refuerzo)"
				accion = gets.chomp

				if accion == 'retiro'
					@mAjusteMovimiento.boton_retiro
					sleep 2
				elsif accion == 'refuerzo'
					@mAjusteMovimiento.boton_refuerzo
					sleep 2
				end

				@mAjusteMovimiento.boton_atras
				puts "Desea visualizar otro movimiento (S/N)"
					cont = gets.chomp
					
		end	while cont == 'S' || cont == 's'

end

menu_ajustes
menu_movimientos
menu_ajustes_movimientos