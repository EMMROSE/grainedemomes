class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :photo
      t.string :cover
      t.text :description
      t.integer :stock
      t.monetize :price
      t.monetize :old_price
      t.references :category, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true

      t.timestamps
    end
  end
end
