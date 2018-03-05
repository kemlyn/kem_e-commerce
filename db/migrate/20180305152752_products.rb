class Products < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :sku
      t.integer :cost
      t.integer :price
      t.integer :stock
    end
  end
end
