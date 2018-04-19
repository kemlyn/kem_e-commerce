class BasketItem < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  scope :in_basket, -> { where(order_id: nil) }
end
