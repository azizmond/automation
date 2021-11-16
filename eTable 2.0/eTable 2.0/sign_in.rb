require 'selenium-webdriver'
require_relative 'Login.rb'

	def iniciar_browser
		puts "Se inicia navegador"
		@browser = Selenium::WebDriver.for :chrome
	end

	def navegar_pantalla_login
		puts "Navegar pantalla de logueo"
		@pagina = Login.new(@browser)
		@pagina.abrir
		@pagina.maximize
	end

	def ingreso_perfil
		puts "Ingresar perfil"
			perfil = gets.chomp
		puts "Escribir Usuario y Contraseña"

		case perfil
			when "croupier"
				def escribir_usuario_contrasena
					@pagina.usuario = "croupier03"
					@pagina.pass = "123456**"
				end
			when "tesorero"
				def escribir_usuario_contrasena
					@pagina.usuario = "treasure03"
					@pagina.pass = "123456**"
				end
			when "cajero"
				def escribir_usuario_contrasena
					@pagina.usuario = "cashier03"
					@pagina.pass = "123456**"
				end
			when "teceng"				
				def escribir_usuario_contrasena
					@pagina.usuario = "teceng"
					@pagina.pass = "0okmnji9**"
				end
			else
				def escribir_usuario_contrasena
					@pagina.usuario = "prueba"
					@pagina.pass = "pass"
					sleep 1
				end
		end
	end

	def boton_acceder
		puts "Presionar boton acceder"
		@pagina.acceder
		sleep 1
		puts "Verificar ingreso"
		@pagina.assert_user_pass
	end



iniciar_browser
navegar_pantalla_login
ingreso_perfil
escribir_usuario_contrasena
boton_acceder