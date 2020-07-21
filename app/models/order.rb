class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  validates :email, presence: true
  validates :phone, presence: true
  validates :cgv, presence: true
  monetize :amount_cents
  monetize :shipping_cents
  monetize :sub_total_cents

  def shipping_cents
    sub_total_cents >= 6000 ? 0 : 390
  end

  def amount_cents
    if Promotion.find { |l| l.code == codepromo.downcase }
      reduction = Promotion.where(code: codepromo.downcase).pluck(:reduction)
      return (reduction.first*sub_total_cents + shipping_cents).to_i
    else
      return sub_total_cents + shipping_cents
    end
  end
end
