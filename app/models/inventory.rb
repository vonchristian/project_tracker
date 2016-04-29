class Inventory < ApplicationRecord
  validates :description, :unit_price, presence: true
  validates :unit_price, numericality:{ greater_than: 0.1 }
end
