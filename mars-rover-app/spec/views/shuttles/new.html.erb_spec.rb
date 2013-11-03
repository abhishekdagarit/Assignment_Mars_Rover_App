require 'spec_helper'

describe "shuttles/new" do
  before(:each) do
    assign(:shuttle, stub_model(Shuttle,
      :landing_x_axis => 1,
      :landing_y_axis => 1,
      :target_x_axis => 1,
      :target_y_axis => 1,
      :grid_id => 1
    ).as_new_record)
  end

  it "renders new shuttle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shuttles_path, :method => "post" do
      assert_select "input#shuttle_landing_x_axis", :name => "shuttle[landing_x_axis]"
      assert_select "input#shuttle_landing_y_axis", :name => "shuttle[landing_y_axis]"
      assert_select "input#shuttle_target_x_axis", :name => "shuttle[target_x_axis]"
      assert_select "input#shuttle_target_y_axis", :name => "shuttle[target_y_axis]"
      assert_select "input#shuttle_grid_id", :name => "shuttle[grid_id]"
    end
  end
end
