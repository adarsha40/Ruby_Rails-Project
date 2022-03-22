class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :sku
      t.float :mrp
      t.integer :quantity
      t.float :discount
      t.float :net_price

      t.timestamps
    end
  end
end
