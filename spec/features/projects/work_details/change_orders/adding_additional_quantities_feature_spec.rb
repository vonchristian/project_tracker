require 'rails_helper'

feature 'Addtional quantities feature', type: :feature do
   before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end
  given!(:work_detail) { create(:work_detail) }

  scenario 'then i can save a work detail with valid information' do
    visit work_detail_path(work_detail)
    click_link "Add Quantity"
    fill_in "Quantity", with: 2
    fill_in "Remarks", with: "Safety Program"
    fill_in "Date", with: "2016/05/02"
    fill_in "Cost", with: 1000
    fill_in "Total", with: 2_000
    click_button "Save Quantity"

    expect(page).to have_content("saved successfully.")
  end
  end
