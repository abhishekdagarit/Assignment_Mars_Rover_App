require 'spec_helper'

describe "grids/edit" do
  before(:each) do
    @grid = assign(:grid, stub_model(Grid,
      :grid_x => 1,
      :grid_y => 1
    ))
  end

  it "renders the edit grid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grids_path(@grid), :method => "post" do
      assert_select "input#grid_grid_x", :name => "grid[grid_x]"
      assert_select "input#grid_grid_y", :name => "grid[grid_y]"
    end
  end
end
