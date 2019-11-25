class CreateJoinTableCartsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_carts_items do |t|
    	t.references :item, index: true
    	t.references :cart, index: true
      t.timestamps
    end
  end
end
