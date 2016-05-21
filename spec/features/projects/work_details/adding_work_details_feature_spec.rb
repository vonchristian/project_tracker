require 'rails_helper'

feature 'Creating a Work Detail', type: :feature do
   before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end
  given!(:project) { create(:project) }

  scenario 'then i can save a work detail with valid information' do
    visit monitoring_project_path(project)
    click_link "New Work Detail"
    fill_in "Code", with: "213"
    fill_in "Description", with: "Safety Program"
    fill_in "Unit", with: "cu.m."
    fill_in "Quantity", with: 50
    fill_in "Cost", with: 1000
    fill_in "Total", with: 50_000
    click_button "Save Work Detail"


    expect(page).to have_content("saved successfully.")
    expect(page).to have_content("Safety Program")
  end
  end
