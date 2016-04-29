class Inventory < ApplicationRecord
  has_many :stocks, class_name: "Inventories::Stock"
  validates :description, :unit, presence: true
  accepts_nested_attributes_for :stocks
end
