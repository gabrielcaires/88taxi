require "rails_helper"

RSpec.describe TaxisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/taxis").to route_to("taxis#index")
    end

    it "routes to #new" do
      expect(:get => "/taxis/new").to route_to("taxis#new")
    end

    it "routes to #show" do
      expect(:get => "/taxis/1").to route_to("taxis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/taxis/1/edit").to route_to("taxis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/taxis").to route_to("taxis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/taxis/1").to route_to("taxis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/taxis/1").to route_to("taxis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/taxis/1").to route_to("taxis#destroy", :id => "1")
    end

  end
end
