require "spec_helper"

describe ShuttlesController do
  describe "routing" do

    it "routes to #index" do
      get("/shuttles").should route_to("shuttles#index")
    end

    it "routes to #new" do
      get("/shuttles/new").should route_to("shuttles#new")
    end

    it "routes to #show" do
      get("/shuttles/1").should route_to("shuttles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shuttles/1/edit").should route_to("shuttles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shuttles").should route_to("shuttles#create")
    end

    it "routes to #update" do
      put("/shuttles/1").should route_to("shuttles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shuttles/1").should route_to("shuttles#destroy", :id => "1")
    end

  end
end
