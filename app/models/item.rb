class Item < ApplicationRecord
	has_and_belongs_to_many :carts
	validates :title,
		presence: true
	validates :price,
		presence: true, numericality: { greater_than: 0 }
	validates :description,
		presence: true,
		length: { in: 5..100, wrong_length: "5 to 100 characters is allowed" }
	validates :image_url,
		presence: true

end
