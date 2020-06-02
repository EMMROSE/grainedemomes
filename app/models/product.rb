class Product < ApplicationRecord
  belongs_to :category
  belongs_to :genre
  belongs_to :size
  has_many :line_items, dependent: :destroy

  validates :name, presence: true #, length: { in: 3...16 }
  validates :description, presence: true, length: { in: 6...150 }
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
  validates :old_price_cents, presence: true, numericality: { greater_than: 0 }
  validates :sku, presence: true, uniqueness: true

  monetize :price_cents
  monetize :old_price_cents

  has_one_attached :photo
  has_one_attached :cover

  #pg search
  include PgSearch::Model
  pg_search_scope :search_by_name_sku,
    against: [ :name, :sku ],
    using: {
      tsearch: { prefix: true }
    }
end
