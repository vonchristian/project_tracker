require 'rails_helper'

feature 'Work Detail Accomplishment Management', type: :feature do
  #  before (:each) do
  #    user = FactoryGirl.create(:user)
  #    login_as(user, :scope => :user)
  #  end
  given!(:work_detail) { create(:work_detail) }
  given!(:accomplishment) {create(:accomplishment, work_detail: work_detail)}

  scenario 'then i can update an accomplishment with valid information' do
    visit work_detail_path(work_detail)
    click_link "Edit"
    fill_in "Quantity", with: 1
    fill_in "Date", with: "2016/05/01"
    fill_in "Remarks", with: "Delivered Sand"
    click_button "Save Accomplishment"


    expect(page).to have_content("updated successfully.")
  end
  end
