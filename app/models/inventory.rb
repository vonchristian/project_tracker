class Inventory < ApplicationRecord
  has_many :stocks, class_name: "Inventories::Stock"
  validates :description, :unit_price, presence: true
  validates :unit_price, numericality:{ greater_than: 0.1 }

  accepts_nested_attributes_for :stocks
end
