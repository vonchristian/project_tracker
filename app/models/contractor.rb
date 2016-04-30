class Contractor < ApplicationRecord
  validates :first_name, :last_name, :company, :position, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
