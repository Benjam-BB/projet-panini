class PaniniImagesController < ApplicationController

    def create
        @item = Item.find(params[:item_id])
        @item.panini_image.attach(params[:panini_image])
        redirect_to(item_path(@item))
    end
end
