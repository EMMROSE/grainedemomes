class CreateOrderGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_gifts do |t|
      t.string :state
      t.string :email
      t.string :fullname
      t.string :email_guest
      t.string :fullname_guest
      t.string :checkout_session_id
      t.monetize :amount
      t.boolean :cgv
      t.references :user, null: true, foreign_key: true
      t.references :gift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
