class CreateVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :variants do |t|
      t.integer :product_id, limit: 6
      t.integer :shopify_variant_id, limit: 6
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :sku
      t.string :barcode
      t.float :price
      t.datetime :last_shopify_sync

      t.timestamps
    end
    add_index :variants, :product_id
  end
end
