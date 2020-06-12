class AddCgvToOrderGifts < ActiveRecord::Migration[6.0]
  def change
    add_column :order, :cgv, :boolean
  end
end
