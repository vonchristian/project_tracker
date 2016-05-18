require 'rails_helper'

RSpec.describe Monitoring::Contractor, :type => :model do
  describe "associations" do
    it {is_expected.to have_many :contracts }
    it {is_expected.to have_many :projects }
  end
end
