class OrdersController < ApplicationController
  def show
  	@order = Order.find(params[:id])
  end

  def new
  end

  def create
  	@user = User.find(params[:user_id])
  	@order = @user.orders.new()
  end

end
