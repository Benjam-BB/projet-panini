class OrdersController < ApplicationController

  before_action :authenticate_user
  before_action :authenticate_current_user_nested

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
	  @order = @user.orders.new()
	  @order.items << @user.cart.items
    @amount = (@order.total_price.round(2)*100).to_i

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Paiement',
      currency: 'eur',
    })
    @order.stripe_customer_id = customer.id
	  @order.save
	  @user.cart.items.destroy_all #empty the items included in the cart
	  flash[:notice] = "Commande validée"
	  redirect_to user_order_path(user_id: current_user.id, id: @order.id)
	  	
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to user_cart_path()

  end

end
