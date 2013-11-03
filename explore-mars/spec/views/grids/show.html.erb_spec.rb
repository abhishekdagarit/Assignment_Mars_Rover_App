require 'spec_helper'

describe "grids/show" do
  before(:each) do
    @grid = assign(:grid, stub_model(Grid,
      :grid_x => 1,
      :grid_y => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
