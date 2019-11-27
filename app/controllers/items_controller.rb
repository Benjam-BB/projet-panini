class ItemsController < ApplicationController
	before_action :authenticate_user, except: [:index, :show]

  def new
  end
  def create
  	@item=Item.new(title: params[:title], description: params[:description], price: params[:price])
  	if @item.save
  		flash[:success] = 'La carte a été créée - ajoutez une image'
  		redirect_to edit_item_path(@item.id)
  	else
  		flash[:error] = @item.errors.full_messages
  		render :new
  	end
  end
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
