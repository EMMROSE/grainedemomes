class OrderGift < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :gift

  validates :email, presence: true
  validates :email_guest, presence: true
  monetize :amount_cents
end
