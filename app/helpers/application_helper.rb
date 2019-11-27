module ApplicationHelper

  def authenticate_user
		unless current_user
	    redirect_to new_user_session_path
	  end
	end

	def existing_cart
		if Cart.find_by(user_id: current_user.id).nil?
			Cart.create(user_id: current_user.id)
		end
	end

	def authenticate_current_user
    @user = User.find(params[:id])
    unless current_user.id == @user.id
     redirect_to root_path
  	end
  end

  def authenticate_current_user_nested
    @user = User.find(params[:user_id])
    unless current_user.id == @user.id
  	 redirect_to root_path
    end
  end
end
