class AdminMailer < ApplicationMailer
  	default from: 'no-reply-panini@yopmail.com'

	def order_confirmation_email(user,order)
	    @user = user
		@order = order
		@items = @order.items
	    @url  = 'https://panini-project.herokuapp.com' 
	    mail(to: "admin_panini@yopmail.com", subject: "Confirmation de la commande #{@order}") 
  	end
end
