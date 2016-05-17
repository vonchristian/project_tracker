require 'rails_helper'

feature 'Creating a project', type: :feature do
   before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end

  scenario 'with valid information' do
    visit projects_path
    click_link "New Project"
    fill_in "Name", with: "Road Widening"
    fill_in "Number", with: "0023GH"
    fill_in "Implementing office", with: "DPWH"
    fill_in "Contract amount", with: 100_000
    click_button "Save Project"


    expect(page).to have_content("saved successfully.")
    expect(page).to have_content("Road Widening")
  end
  end
