require 'spec_helper'

describe "shuttles/index" do
  before(:each) do
    assign(:shuttles, [
      stub_model(Shuttle,
        :landing_x_axis => 1,
        :landing_y_axis => 2,
        :target_x_axis => 3,
        :target_y_axis => 4,
        :grid_id => 5
      ),
      stub_model(Shuttle,
        :landing_x_axis => 1,
        :landing_y_axis => 2,
        :target_x_axis => 3,
        :target_y_axis => 4,
        :grid_id => 5
      )
    ])
  end

  it "renders a list of shuttles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
