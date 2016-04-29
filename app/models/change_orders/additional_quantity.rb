class ChangeOrders::AdditionalQuantity < ApplicationRecord
  belongs_to :work_detail
  validates :date, :quantity, :remarks, :unit_cost, :total_cost ,presence: true
  validates :quantity, :unit_cost, numericality: true
end
