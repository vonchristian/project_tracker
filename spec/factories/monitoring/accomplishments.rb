FactoryGirl.define do
  factory :accomplishment, class: "Monitoring::Accomplishment" do
    work_detail nil
    quantity "9.99"
    date "2016-05-01 08:37:08"
    remarks "MyString"
  end
end
