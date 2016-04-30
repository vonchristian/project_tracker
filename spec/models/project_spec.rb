require 'rails_helper'

RSpec.describe Project, :type => :model do
  describe "Associations" do
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :number }
    it { is_expected.to validate_uniqueness_of :number }
    it { is_expected.to validate_presence_of :implementing_office }
    it { is_expected.to validate_presence_of :contract_amount }
    it { is_expected.to validate_numericality_of :contract_amount }
  end
end
