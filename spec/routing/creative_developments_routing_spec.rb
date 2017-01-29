require "rails_helper"

RSpec.describe CreativeDevelopmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/creative_developments").to route_to("creative_developments#index")
    end

    it "routes to #new" do
      expect(:get => "/creative_developments/new").to route_to("creative_developments#new")
    end

    it "routes to #show" do
      expect(:get => "/creative_developments/1").to route_to("creative_developments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/creative_developments/1/edit").to route_to("creative_developments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/creative_developments").to route_to("creative_developments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/creative_developments/1").to route_to("creative_developments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/creative_developments/1").to route_to("creative_developments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/creative_developments/1").to route_to("creative_developments#destroy", :id => "1")
    end

  end
end
