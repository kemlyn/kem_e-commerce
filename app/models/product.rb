class Product < ApplicationRecord
  extend FriendlyId

  dragonfly_accessor :image

  belongs_to :category, optional: true

  friendly_id :name, use: :slugged
  validates :stock, presence: true
  validates :price, presence: true
  validates :cost, presence: true
end
