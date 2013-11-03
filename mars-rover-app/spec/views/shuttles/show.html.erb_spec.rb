require 'spec_helper'

describe "shuttles/show" do
  before(:each) do
    @shuttle = assign(:shuttle, stub_model(Shuttle,
      :landing_x_axis => 1,
      :landing_y_axis => 2,
      :target_x_axis => 3,
      :target_y_axis => 4,
      :grid_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
