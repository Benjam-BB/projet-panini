class UsersController < ApplicationController

  before_action :authenticate_user
  before_action :authenticate_current_user

  def show
    @user = User.find(params[:id])
    @cart = Cart.find_by(user_id:@user.id)
    @orders = current_user.orders
    @page_title = 'Mon Profil'
  end

  def edit
    @user = User.find(params[:id])
    @page_title = 'Éditer mon profil'
  end

  def update
    @user = User.find(params[:id])
    if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], city: params[:city], zip_code: params[:zip_code])
      flash[:success] = 'Vos informations ont bien été modifiées'
      redirect_to @user
    else
      render :edit
    end
  end
end
