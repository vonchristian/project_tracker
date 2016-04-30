class WorkDetail < ApplicationRecord
  belongs_to :project
  validates :code, :description, :quantity, :unit, :unit_cost, presence: true
  validates :unit_cost, :quantity, numericality: true
  validates :code, :description, uniqueness:{scope: :project_id}

  def unit_and_quantity
    "#{quantity} #{unit}"
  end
end
