class CartsItems < ActiveRecord::Migration[5.2]
  def change
	  create_table :carts_items do |t|
	      t.references :cart_id
	      t.references :item_id
	      t.timestamps
    end
  end
end
