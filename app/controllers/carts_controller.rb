class CartsController < ApplicationController
	before_action :authenticate_user
	before_action :existing_cart

	
	def show
		@user=current_user
		@cart=Cart.find_by(user_id:@user.id)
		@items=@cart.items
	end

end
