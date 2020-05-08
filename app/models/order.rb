class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :line_items, dependent: :destroy

  validates :email, presence: true
  monetize :amount_cents
end
