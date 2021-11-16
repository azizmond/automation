require 'selenium-webdriver'
require 'colorize'

class Login
	
	URL = "http://192.168.70.8/"

	def initialize browser
		@browser = browser
	end

	def abrir
		@browser.navigate.to URL
	end

	def maximize
		@browser.manage.window.maximize		
	end

	def usuario= usuario
		@browser.find_element(:id,"user_login").send_keys usuario
	end

	def pass= password
		@browser.find_element(:id,"user_pass").send_keys password
	end

	def acceder
		@browser.find_element(:id,"wp-submit").click
	end

	def assert_user_pass
		titulo = @browser.title
			if titulo.include? "Administración"
				puts "El inicio de sesion FALLO - Usuario o Contraseña INCORRECTO".white.on_red
			elsif titulo.include? "eTable"
				puts "El inicio de sesion es CORRECTO".white.on_green
				usuario = @browser.find_element(:class,"font-bold").text
				if usuario.include? "Scott Lang"
					puts "Inicio Croupier".white.on_blue
					elsif usuario.include? "James Rhodes"
						puts "Inicio Cajero".white.on_blue
					elsif usuario.include? "Bruce Banner"
						puts "Inicio Tesorero".white.on_blue
					else
						puts "Inicio Teceng".white.on_blue
				end 
			end		
	end
end