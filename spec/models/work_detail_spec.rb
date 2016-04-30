require 'rails_helper'

RSpec.describe WorkDetail, :type => :model do
  describe "associations" do
    it { is_expected.to belong_to :project }
  end
  describe "validations" do
    it { is_expected.to validate_presence_of :code }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :quantity }
    it { is_expected.to validate_presence_of :unit }
    it { is_expected.to validate_presence_of :unit_cost }
    it { is_expected.to validate_numericality_of :unit_cost }
    it do
      is_expected.to validate_uniqueness_of(:code).scoped_to(:project_id)
    end
    it do
      is_expected.to validate_uniqueness_of(:description).scoped_to(:project_id)
    end
  end

  it ".unit_and_quantity" do
    work_detail = build(:work_detail, unit: "cubic meter", quantity: 100 )

    expect(work_detail.unit_and_quantity).to eql "100.0 cubic meter"
  end
end
