class WorkDetail < ApplicationRecord
  belongs_to :project
  has_many :accomplishments
  has_many :additional_quantities, class_name: "ChangeOrders::AdditionalQuantity"
  validates :code, :description, :quantity, :unit, :unit_cost, presence: true
  validates :unit_cost, :quantity, numericality: true
  validates :code, :description, uniqueness:{scope: :project_id}

  delegate :name, to: :project, prefix: true, allow_nil: true

  def unit_and_quantity
    "#{quantity} #{unit}"
  end

  def accomplished_quantity
    accomplishments.total
  end
end
