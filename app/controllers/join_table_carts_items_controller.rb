class JoinTableCartsItemsController < ApplicationController
	before_action :existing_cart
	
	def create
	end
	def destroy
		JoinTableCartsItem.find(params[:id]).delete
	end
end
