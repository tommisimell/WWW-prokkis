class Cart < ActiveRecord::Base
	
	# KOKO PASKA KAI SEMI TURHA
	
	# yhteen cartiin on sidottu useampia line-itemeja; sidottu, koska
	# line item sisaltaa viittauksen cartinsa id:hen
	
	# dependent: :destroy viittaa siihen, etta line itemin olemassaolo riippuu cartista
	# toisin sanoen kun tuhotaan cart niin myos siina olevat line itemit poistetaan
	has_many :line_items, dependent: :destroy
end
