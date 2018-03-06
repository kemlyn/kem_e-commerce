class Product < ApplicationRecord
  validates :name, presence: true
  validates :stock, presence: true
  validates :price, presence: true
  validates :cost, presence: true
end
