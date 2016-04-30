class Project < ApplicationRecord
  validates :name, :number, :implementing_office, :contract_amount, presence:  true
  validates :number, uniqueness: true
  validates :contract_amount, numericality: true
end
