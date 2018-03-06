class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :description
      t.string :name
      t.string :sku
      t.integer :cost
      t.integer :price
      t.integer :stock
    end
  end
end
