require 'rails_helper'

feature 'Editing an equipment', type: :feature do
   before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end

   given! (:equipment) { create(:equipment) }
  scenario 'with valid information' do
    visit equipment_path(equipment)
    click_link "Update"
    fill_in "Make and model", with: "DMAXX"
    fill_in "Plate number", with: "ABC 123"
    fill_in "Acquisition cost", with: 1_000_000
    fill_in "Acquisition date", with: "2016/05/02"
    click_button "Save Equipment"

    expect(page).to have_content("updated successfully.")
    expect(page).to have_content("DMAXX")
  end
  end
