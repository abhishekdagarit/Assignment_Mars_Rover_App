require 'spec_helper'

describe "HomePages" do
 it "redirect to home page when someone opens the root url" do
    visit root_path
    page.should have_content("Hello")
  end
end
