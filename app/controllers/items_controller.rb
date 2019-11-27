class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end
  def edit
  	@item = Item.find(params[:id])
  end

  def update
  	@item = Item.find(params[:id])
  	if @item.update(title: params[:title], description: params[:description], price: params[:price])
  		flash[:success] = 'La carte a été mise à jour' 
        redirect_to @item
    else
    	flash[:error] = 'Erreur'
      	render :edit
    end
  end
end
