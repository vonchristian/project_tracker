require 'rails_helper'

RSpec.describe Accomplishment, :type => :model do
  describe "associations" do
    it { is_expected.to belong_to :work_detail }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :quantity }
    it do
      is_expected.to validate_numericality_of(:quantity).is_less_than(:work_detail_quantity)
    end
    it { is_expected.to validate_presence_of :date }
    it { is_expected.to validate_presence_of :remarks }
  end

  describe "delegations" do
     it { should delegate_method(:quantity).to(:work_detail).with_prefix }
     it { should delegate_method(:unit).to(:work_detail).with_prefix }
  end
end
