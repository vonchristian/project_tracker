require 'rails_helper'

feature 'Saving an inventory', type: :feature do
  #  before (:each) do
  #    user = FactoryGirl.create(:user)
  #    login_as(user, :scope => :user)
  #  end


  scenario 'with valid information' do
    visit inventories_path
    click_link "New Inventory"
    fill_in "Description", with: "DMAXX"
    fill_in "Unit", with: 'cubic'
    fill_in "Quantity", with: 10
    fill_in "Price", with: 90
    click_button "Save Inventory"

    expect(page).to have_content("saved successfully.")
    expect(page).to have_content("DMAXX")
  end
  end
