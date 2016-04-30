class Project < ApplicationRecord
  has_many :work_details
  has_many :contracts
  has_many :contractors, through: :contracts


  validates :name, :number, :implementing_office, :contract_amount, presence:  true
  validates :number, uniqueness: true
  validates :contract_amount, numericality: true
end
