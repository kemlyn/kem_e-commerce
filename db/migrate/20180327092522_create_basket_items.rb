class CreateBasketItems < ActiveRecord::Migration[5.1]
  def change
    create_table :basket_items do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity, default: 1
    end
  end
end
