class Order < ApplicationRecord
	belongs_to :user
	has_many :join_table_items_orders
	has_many :items, through: :join_table_items_orders

	def total_price
		self.items.to_a.map{|item| item.price }.inject(0, :+)
	end
end

