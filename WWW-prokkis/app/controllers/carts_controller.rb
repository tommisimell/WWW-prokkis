
#siks n�in et muuten navigoitaessa ostoskorin sis�lt� katois. luodaan uusi cartti jos sit� ei ole
#poimii url-osotteesta juttuja
# hash id quantity -pareista
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
	
end