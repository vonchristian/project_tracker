class Inventories::Stock < ApplicationRecord
  belongs_to :inventory
  validates :unit_price, :quantity, presence: true
  validates :unit_price, :quantity, numericality: {greater_than: 0.1 }
end
