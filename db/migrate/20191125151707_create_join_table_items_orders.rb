class CreateJoinTableItemsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_items_orders do |t|
    	t.references :item, index: true
    	t.references :order, index: true
      t.timestamps
    end
  end
end
