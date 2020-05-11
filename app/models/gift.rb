class Gift < ApplicationRecord
  has_many :order_gifts

  monetize :price_cents
end
