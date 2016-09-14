class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :shopify_product_id, limit: 12
      t.datetime :last_shopify_sync

      t.timestamps
    end
  end
end
