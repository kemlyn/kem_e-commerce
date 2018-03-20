class Category < ApplicationRecord
  validates :name, presence: true

  has_many :products
  has_many :categories
  belongs_to :category, optional: true

  scope :primary, -> { where(category_id: nil) }
end
