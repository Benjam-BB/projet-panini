class Cart < ApplicationRecord
  belongs_to :user
  has_many :join_table_carts_items
  has_many :items, through: :join_table_carts_items

  def total_price
    self.items.to_a.map(&:price).inject(0, :+).round(2)
  end

  def is_empty?
    self.items.empty?
	end
end
