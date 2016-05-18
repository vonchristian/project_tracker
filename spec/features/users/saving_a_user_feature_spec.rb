require 'rails_helper'

feature 'Contractor management', type: :feature do
   before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end

  scenario 'with valid information' do
    visit users_path
    click_link "New User"
    fill_in "First name", with: "Von Christian"
    fill_in "Last name", with: "Halip"
    choose "Project Engineer"
    fill_in "Email", with: 'vc.halip@gmail.com'
    fill_in "Password", with: '1111111111'
    fill_in "Password confirmation", with: '1111111111'
    click_button "Save Contractor"

    expect(page).to have_content("saved successfully.")
    expect(page).to have_content("Von Christian Halip")
  end
end
 
