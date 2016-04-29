require 'rails_helper'

RSpec.describe Inventory, :type => :model do
  describe "associations" do
    it { is_expected.to have_many :stocks }
  end
  describe "validations" do
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :unit }
  end

  describe "nested attributes" do
     it { is_expected.to accept_nested_attributes_for(:stocks) }
   end
end
