class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|

      t.timestamps
      t.references :user, index: true
      t.integer :total_amount

    end
  end
end
