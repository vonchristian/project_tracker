require 'rails_helper'

RSpec.describe Monitoring::Contract, :type => :model do
  describe "associations" do
    it {is_expected.to belong_to :project }
    it {is_expected.to belong_to :contractor }
  end
end
