#siks näin et muuten navigoitaessa ostoskorin sisältö katois.
#luodaan uusi cartti jos sitä ei ole
#poimii url-osotteesta juttuja
# muodostuu hash id quantity -pareista

class CartsController < ApplicationController
	def index
		@carts = session[:carts] || {}
	end
	
	def add
		id = params[:id]
		carts = session[:carts] ||= {}
		carts[id] = (carts[id] || 0) + 1
		
		redirect_to :action => :index
	end
	
	# Tässä on vielä jotain hyvinkin hämärää.
	def empty_cart
		session[:carts] = nil
		flash[:notice] = "Ostoskorissasi ei ole tuotteita"
		redirect_to "/home/index"
	end

end