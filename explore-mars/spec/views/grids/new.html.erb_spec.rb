require 'spec_helper'

describe "grids/new" do
  before(:each) do
    assign(:grid, stub_model(Grid,
      :grid_x => 1,
      :grid_y => 1
    ).as_new_record)
  end

  it "renders new grid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grids_path, :method => "post" do
      assert_select "input#grid_grid_x", :name => "grid[grid_x]"
      assert_select "input#grid_grid_y", :name => "grid[grid_y]"
    end
  end
end
