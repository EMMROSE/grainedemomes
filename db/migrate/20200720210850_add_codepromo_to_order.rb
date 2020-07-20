class AddCodepromoToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :codepromo, :string
  end
end
