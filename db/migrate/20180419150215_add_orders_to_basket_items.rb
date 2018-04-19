class AddOrdersToBasketItems < ActiveRecord::Migration[5.1]
  def change
    add_column :basket_items, :order_id, :integer
  end
end
