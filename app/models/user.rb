class User < ApplicationRecord
  acts_as_paranoid

  has_many :basket_items
  has_many :products, through: :basket_items
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
