require 'spec_helper'

describe "Shuttles" do
  before do
    user = FactoryGirl.create(:shuttle, landing_x_axis: "1", landing_x_axis: "1", target_x_axis: "1", target_y_axis: "2")
    visit new_user_session_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
    click_link "Grids"
    click_link "New Grid"
    fill_in "X axis", :with => "14"
    fill_in "Y axis", :with => "12"
    fill_in "Description", :with => "This is a valid discription for the grids"
    click_button "Create Grid"
    page.should have_content "Grid was successfully created."
  end


  describe "GET /shuttles" do

    it "" do

    end

  end
end
