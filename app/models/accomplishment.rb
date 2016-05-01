class Accomplishment < ApplicationRecord
  belongs_to :work_detail
  validates :quantity, :date, :remarks, presence: true
  validates :quantity, numericality: { less_than_or_equal_to: :work_detail_quantity }

  delegate :quantity, to: :work_detail, prefix: true
  delegate :unit, to: :work_detail, prefix: true
  def self.total
    self.all.sum(:quantity)
  end
end
