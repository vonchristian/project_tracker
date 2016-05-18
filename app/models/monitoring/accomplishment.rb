module Monitoring
  class Accomplishment < ApplicationRecord
    belongs_to :work_detail
    validates :quantity, :date, :remarks, presence: true
    validates :quantity, numericality:{ less_than_or_equal_to: :work_detail_remaining_quantity }

    delegate :remaining_quantity, to: :work_detail, prefix: true, allow_nil: true
    delegate :unit, to: :work_detail, prefix: true
    def self.total
      self.all.sum(:quantity)
    end
  end
end
