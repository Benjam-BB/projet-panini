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
end
