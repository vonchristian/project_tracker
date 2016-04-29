require 'rails_helper'

feature "Adding New Stocks To Iventory Feature", :type => :feature do
  #  before (:each) do
  #    user = FactoryGirl.create(:user)
  #    login_as(user, :scope => :user)
  #  end

given! (:inventory) { create(:inventory) }
  scenario 'with valid information' do
    visit inventory_path(inventory)
    click_link "New Stock"
    fill_in "Quantity", with: 100
    fill_in "Price", with: 50
    click_button "Save Stock"

    expect(page).to have_content("saved successfully.")
  end
end
