class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    self.product.price
    # NO QUANTITY FOR LINE ITEM INTO THIS APP
    #OTHERWISE IS code below
    # self.quantity * self.product.price
  end
end
