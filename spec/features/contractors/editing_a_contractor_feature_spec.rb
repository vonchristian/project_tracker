require 'rails_helper'

feature 'Contractor management', type: :feature do
   before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end 
  given! (:contractor) {create(:contractor)}
  scenario 'with valid information' do
    visit contractor_path(contractor)
    click_link "Update Contractor"
    fill_in "First name", with: "Von Christian"
    fill_in "Last name", with: "Halip"
    fill_in "Company", with: "ITWORX"
    fill_in "Position", with: "Owner"
    click_button "Save Contractor"

    expect(page).to have_content("updated successfully.")
    expect(page).to have_content("Von Christian Halip")
  end
  end
