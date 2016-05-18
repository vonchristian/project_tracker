FactoryGirl.define do
  factory :contract, class: "Monitoring::Contract" do
    project nil
    contractor nil
  end
end
