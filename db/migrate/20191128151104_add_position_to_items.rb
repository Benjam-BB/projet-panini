class AddPositionToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :position, :string
  end
end
