require 'rails_helper'

RSpec.describe Inventory, :type => :model do
  describe "associations" do
  end
  describe "validations" do
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :unit_price }
    it do
      is_expected.to validate_numericality_of(:unit_price).is_greater_than(0.1)  
    end
  end
end
