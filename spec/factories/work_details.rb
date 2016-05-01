FactoryGirl.define do
  factory :work_detail do
    project nil
    code "001212"
    description "Satety Program"
    quantity 100
    unit "MyString"
    unit_cost 100
    status 1
  end
end
