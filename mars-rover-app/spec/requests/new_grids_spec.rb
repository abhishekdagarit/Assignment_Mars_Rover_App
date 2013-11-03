#new file starts from here
require 'spec_helper'

describe "New Grids" do
  before do
    user = FactoryGirl.create(:user, email: "testing@testing.com", password: "testing")
    visit new_user_session_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
    grid = FactoryGirl.create(:grid, x_axis: "10", y_axis: "15", description: "this is a valid description statement for this grid")
    click_link "Grids"
    click_link "New Grid"
    fill_in "X axis", :with => grid.x_axis
    fill_in "Y axis", :with => grid.y_axis
    fill_in "Description", :with => grid.description
    click_button "Create Grid"
  end

#Grid was successfully updated.
  describe "PUT /grids" do
    it "edits a grid value" do
        click_link "Edit"
	fill_in "X axis", :with => "12"
	click_button "Update Grid"

        page.should have_content "Grid was successfully updated."
    end
  end


#  describe "DELETE /grids" do
#    it "should delete a grid" do
#	click_link "Back"
#	click_link "Destroy"
#	page.should have_no_content "this is a valid description statement for this grid"
#    end   
#  end
end




