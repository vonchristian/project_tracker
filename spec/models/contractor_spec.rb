require 'rails_helper'

RSpec.describe Contractor, :type => :model do
  describe "associations" do

  end

  describe "validations" do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :company }
    it { is_expected.to validate_presence_of :position }
  end

  it ".full_name" do
    contractor = build(:contractor, first_name: "Von Christian", last_name: "Halip")

    expect(contractor.full_name).to eql "Von Christian Halip"
  end
end
