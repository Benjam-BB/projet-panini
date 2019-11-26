class OrdersController < ApplicationController
	before_action :authenticate_user

  def index
  	@user = current_user
  	@orders = @user.orders 
  end

  def show
  	@user = current_user
	@order = Order.find(params[:id])
	@items = @order.items
  end

  def new
  end

  def create
  	@user = current_user
  	if @user.cart.items.empty? #check if the cart is empty in order not to create empty order
  		flash[:notice] = "Vous n'avez rien dans votre panier"
  		redirect_to user_cart_path()
  	else
	  	@order = @user.orders.new()
	  	@order.items << @user.cart.items
	  	if @order.save
	  		@user.cart.items.destroy_all #empty the items included in the cart
	  		flash[:notice] = "Commande validée"
	  		redirect_to user_order_path(user_id: current_user.id, id: @order.id)
	  	else
	  		flash[:notice] = "Un problème est survenu"
	  		redirect_to user_cart_path()
	  	end
	end

  end

end
