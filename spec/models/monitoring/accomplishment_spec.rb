require 'rails_helper'

RSpec.describe Monitoring::Accomplishment, :type => :model do
  describe "associations" do
    it { is_expected.to belong_to :work_detail }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :quantity }
    # it do
    #   is_expected.to validate_numericality_of(:quantity).is_less_than_or_equal_to(:work_detail_remaining_quantity)
    # end
    it { is_expected.to validate_presence_of :date }
    it { is_expected.to validate_presence_of :remarks }
  end

  describe "delegations" do
     it { should delegate_method(:remaining_quantity).to(:work_detail).with_prefix }
     it { should delegate_method(:unit).to(:work_detail).with_prefix }
  end
end
