class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.string :name
      t.integer :product_id, limit: 6
      t.datetime :start_date
      t.datetime :end_date
      t.integer :max_results
      t.integer :order_id, limit: 6
      t.string :product_name

      t.timestamps
    end
    add_index :contests, :order_id
  end
end
