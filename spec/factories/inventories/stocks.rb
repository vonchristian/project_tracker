FactoryGirl.define do
  factory :stock, class: "Inventories::Stock" do
    quantity "MyString"
    inventory nil
    unit_price "9.99"
  end
end
