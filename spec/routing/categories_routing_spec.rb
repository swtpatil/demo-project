require "rails_helper"
require 'factory_bot_rails'


RSpec.describe "routes for Categories", type: :routing do

  it "routes index to the categories controller" do
    expect(get("/categories")).to route_to("categories#index")
  end

  it "route new to the categories controller" do
    expect(get("/categories/new")).to route_to("categories#new")
  end

  it "route create to the categories controller" do
    expect(post("/categories")).to route_to("categories#create")
  end

  it "route show to the categories controller" do
    expect(get("/categories/:id")).to route_to("categories#show")
  end

  # it "route edit to the categories controller" do
  #   expect(get("/categories/:id/edit")).to route_to("categories#edit")
  # end

  # it "route update to the categories controller" do
  #   expect(put("/categories/:id/update")).to route_to("categories#update")
  # end

  # it "route delete to the categories controller" do
  #   expect(delete("/categories/:id")).to route_to("categories#destroy")
  # end
end
