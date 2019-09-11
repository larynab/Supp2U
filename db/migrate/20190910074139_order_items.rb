class OrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.string :item_name
      t.float  :price
      t.integer :inventory

      t.timestamps
    end
  end
end
