require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "associations" do
    it { is_expected.to belong_to :role }
  end
  describe "validations" do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
  end
  it ".full_name" do
    user = build(:user, first_name: "Von Christian", last_name: "Halip")

    expect(user.full_name).to eql "Von Christian Halip"
  end
  describe "photo_attachment" do
    it { is_expected.to have_attached_file(:photo) }
    it { is_expected.to validate_attachment_content_type(:photo).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
  end

  describe "delegations" do
    it { is_expected.to delegate_method(:project_engineer?).to(:role)}
  end
end
