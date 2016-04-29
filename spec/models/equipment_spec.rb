require 'rails_helper'

RSpec.describe Equipment, :type => :model do
  describe "associations" do
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :plate_number }
    it { is_expected.to validate_presence_of :make_and_model }
    it { is_expected.to validate_presence_of :acquisition_cost }
    it { is_expected.to validate_presence_of :acquisition_date }
    it { is_expected.to validate_numericality_of :acquisition_cost }
  end
end
