class Product < ApplicationRecord
  extend FriendlyId

  dragonfly_accessor :image
  paginates_per 3

  belongs_to :category, optional: true

  has_many :basket_items

  friendly_id :name, use: :slugged
  validates :stock, presence: true
  validates :price, presence: true
  validates :cost, presence: true
end
