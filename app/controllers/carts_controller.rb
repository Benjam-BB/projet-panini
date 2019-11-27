class CartsController < ApplicationController
	before_action :authenticate_user
	before_action :existing_cart
 	before_action :authenticate_current_user_nested

	def show
		@user=current_user
		@cart=Cart.find_by(user_id:@user.id)
		@items=@cart.items
		@page_title = 'Mon Mercato'
	end

end
