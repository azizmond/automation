require_relative 'requirer'

def metable
	@metable = Etable.new(@browser)
	@metable.etable_menu
end

metable