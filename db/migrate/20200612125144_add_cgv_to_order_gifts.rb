class AddCgvToOrderGifts < ActiveRecord::Migration[6.0]
  def change
    add_column :order_gift, :cgv, :boolean
  end
end
