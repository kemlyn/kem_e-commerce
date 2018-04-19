class CreateOrder < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :address
      t.string :banking_detail
    end
  end
end
