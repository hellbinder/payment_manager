require "spec_helper"

describe PaymentSourcesController do
  describe "routing" do

    it "routes to #index" do
      get("/payment_sources").should route_to("payment_sources#index")
    end

    it "routes to #new" do
      get("/payment_sources/new").should route_to("payment_sources#new")
    end

    it "routes to #show" do
      get("/payment_sources/1").should route_to("payment_sources#show", :id => "1")
    end

    it "routes to #edit" do
      get("/payment_sources/1/edit").should route_to("payment_sources#edit", :id => "1")
    end

    it "routes to #create" do
      post("/payment_sources").should route_to("payment_sources#create")
    end

    it "routes to #update" do
      put("/payment_sources/1").should route_to("payment_sources#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/payment_sources/1").should route_to("payment_sources#destroy", :id => "1")
    end

  end
end
