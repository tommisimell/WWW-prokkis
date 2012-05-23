#siks näin et muuten navigoitaessa ostoskorin sisältö katois.
#luodaan uusi cartti jos sitä ei ole
#poimii url-osotteesta juttuja
# muodostuu hash id quantity -pareista

class CartsController < ApplicationController
	def index
		@carts = find_cart
	end
	
	def add
		id = params[:id]
		carts = find_cart
		carts[id] = (carts[id] || 0) + 1
		
		redirect_to :action => :index
	end
	

	
	def delete
		id = params[:id]
		carts = find_cart
		
		#jos carts[id] < 1 niin quantityksi tulee 0: muuten quantity pienenee yhdellä
		carts[id] = (carts[id] < 1) ? 0 : (carts[id] || 0) - 1

		redirect_to :action => :index
	end
	
	# Tässä on vielä jotain hyvinkin hämärää.
	def empty_cart
		session[:carts] = nil
		flash[:notice] = "Ostoskorissasi ei ole tuotteita"
		redirect_to :action => 'index'
	end
	
	
	private
	
	def find_cart
		session[:carts] ||= {}
	end

end