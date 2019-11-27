class JoinTableCartsItemsController < ApplicationController
	before_action :authenticate_user
		
	def create
		JoinTableCartsItem.create(item_id:params[:item_id],cart_id:Cart.find_by(user_id:current_user.id).id)
		flash[:success] = 'La carte a été ajoutée à votre panier'
	end
	def destroy
		JoinTableCartsItem.find(params[:id]).delete
		redirect_to user_cart_path(current_user.id)
		flash[:success] = 'La carte a été retirée de votre panier'
	end
end
