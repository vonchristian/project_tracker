FactoryGirl.define do
  factory :project, class: "Monitoring::Project" do
    name "Road Widening"
    number "00123HG"
    contract_amount 100_000
    implementing_office "DPWH"
    status 0
  end
end
