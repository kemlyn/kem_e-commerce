class Order < ApplicationRecord
  belongs_to :user
  has_many :basket_items

  def total
    order_price = 0
    basket_items.each do |item|
      order_price += item.product.price * item.quantity
    end
    order_price
  end
end
