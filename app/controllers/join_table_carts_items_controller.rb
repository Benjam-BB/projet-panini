class JoinTableCartsItemsController < ApplicationController
	def create
	end
	def destroy
		JoinTableCartsItem.find(params[:id]).delete
	end
end
