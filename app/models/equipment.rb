class Equipment < ApplicationRecord
  validates :plate_number, :make_and_model, :acquisition_cost, presence: true
  validates :acquisition_cost, numericality: true

end
