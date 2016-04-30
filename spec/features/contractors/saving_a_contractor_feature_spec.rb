require 'rails_helper'

feature 'Contractor management', type: :feature do
  #  before (:each) do
  #    user = FactoryGirl.create(:user)
  #    login_as(user, :scope => :user)
  #  end

  scenario 'with valid information' do
    visit contractors_path
    click_link "New Contractor"
    fill_in "First name", with: "Von Christian"
    fill_in "Last name", with: "Halip"
    fill_in "Company", with: "ITWORX"
     fill_in "Position", with: "Owner"
    click_button "Save Contractor"

    expect(page).to have_content("saved successfully.")
    expect(page).to have_content("Von Christian Halip")
  end
  end
