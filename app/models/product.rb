class Product < ApplicationRecord
  belongs_to :category
  belongs_to :genre
  belongs_to :size
  has_many :line_items, dependent: :destroy

  validates :name, presence: true #, length: { in: 3...16 }
  validates :description, presence: true, length: { in: 6...100 }
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
  validates :old_price_cents, presence: true, numericality: { greater_than: 0 }
  validates :sku, presence: true, uniqueness: true

  monetize :price_cents
  monetize :old_price_cents

  has_many_attached :photos
  has_one_attached :cover
end
