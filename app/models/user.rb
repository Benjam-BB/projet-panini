class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :cart
  has_many :orders
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :welcome_send
  after_create :create_cart
  after_destroy :destroy_cart


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def create_cart
    Cart.create(user_id: self.id)
  end
  def destroy_cart
    Cart.find_by(user_id: self.id).destroy
  end
end
