require 'rails_helper'

RSpec.describe ChangeOrders::AdditionalQuantity, :type => :model do
  describe "associations" do
    it { is_expected.to validate_presence_of :quantity }
    it { is_expected.to validate_numericality_of :quantity }
    it { is_expected.to validate_presence_of :remarks }
    it { is_expected.to validate_presence_of :date }
    it { is_expected.to validate_presence_of :unit_cost }
    it { is_expected.to validate_numericality_of :unit_cost }


  end

end
