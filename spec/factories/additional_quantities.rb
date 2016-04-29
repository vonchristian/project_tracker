FactoryGirl.define do
  factory :additional_quantity, class: "ChangeOrders::AdditionalQuantity" do
    work_detail nil
    quantity "9.99"
    date "2016-05-01 17:01:26"
    remarks "MyString"
    cost "9.99"
  end
end
