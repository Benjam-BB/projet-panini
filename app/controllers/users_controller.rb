class UsersController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_current_user

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end
end
