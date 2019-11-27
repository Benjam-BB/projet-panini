class Order < ApplicationRecord
	belongs_to :user
	has_many :join_table_items_orders
	has_many :items, through: :join_table_items_orders
	after_create :order_confirmation_send

	def total_price
		self.items.to_a.map{|item| item.price }.inject(0, :+)
	end
	def order_confirmation_send
    	UserMailer.order_confirmation_email(User.find(self.user_id),self).deliver_now
    	AdminMailer.order_confirmation_email(User.find(self.user_id),self).deliver_now
  	end
end
