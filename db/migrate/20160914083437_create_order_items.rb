class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :variant_id
      t.integer :shopify_product_id, limit: 6
      t.integer :shopify_variant_id, limit: 6
      t.float :unit_price
      t.integer :quantity

      t.timestamps
    end
    add_index :order_items, :order_id
    add_index :order_items, :variant_id
    add_index :order_items, :shopify_variant_id
  end
end
