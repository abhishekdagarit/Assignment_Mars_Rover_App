#new file starts from here
require 'spec_helper'

describe "Valid Grids" do
  before do
    user = FactoryGirl.create(:user, email: "testing@testing.com", password: "testing")
    visit new_user_session_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
  end

  describe "GET /grids" do

    it "creates a new grid" do
      click_link "Grids"
      click_link "New Grid"
      fill_in "X axis", :with => "14"
      fill_in "Y axis", :with => "12"
      fill_in "Description", :with => "This is a valid discription for the grids"
      click_button "Create Grid"
      page.should have_content "Grid was successfully created."
    end

    it "doesnt create a grid with invalid data" do
      click_link "Grids"
      click_link "New Grid"
      fill_in "X axis", :with => "10"
      fill_in "Y axis", :with => "1000"
      fill_in "Description", :with => "me"
      click_button "Create Grid"
      page.should have_content "Y axis : Please enter values between 1 and 21 only."
    end

    it "doesnt create a grid with invalid description" do
      click_link "Grids"
      click_link "New Grid"
      fill_in "X axis", :with => "10"
      fill_in "Y axis", :with => "10"
      fill_in "Description", :with => "me"
      click_button "Create Grid"
      page.should have_content "Description is too short (minimum is 10 characters)"
    end

    it "shows the grid index" do
      click_link "Grids"
      click_link "New Grid"
      fill_in "X axis", :with => "15"
      fill_in "Y axis", :with => "18"
      fill_in "Description", :with => "This is a valid discription for the grids"
      click_button "Create Grid"
      page.should have_content "Grid was successfully created."
      visit grids_path
      page.should have_content "This is a valid discription for the grids"
    end

  end
end
