class UserMailer < ApplicationMailer
  default from: 'no-reply-panini@yopmail.com'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://panini-project.herokuapp.com' 
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def order_confirmation_email(user,order)
    @user = user
    @order = order
    @items = @order.items

    # @items.each do |o|
    #  if o.panini_image.attached?
    #    @image = o.panini_image
    #  end
    

     # if o.panini_image.attached?
        # Pour les images que l'admin a mis en ligne
     #   attachments.inline["#{@image}"] = File.read(@image.blob.service.send(:path_for, @image.key))
     # end
    #end

    @url  = 'https://panini-project.herokuapp.com' 
    mail(to: @user.email, subject: "Confirmation de votre commande #{@order}") 
  end

end
