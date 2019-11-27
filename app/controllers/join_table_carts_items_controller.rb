class JoinTableCartsItemsController < ApplicationController
	before_action :authenticate_user
		
	def create
		JoinTableCartsItem.create(item_id:params[:item_id],cart_id:Cart.find_by(user_id:current_user.id).id)
	end
	def destroy
		JoinTableCartsItem.find(params[:id]).delete
	end
end
