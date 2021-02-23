require "rails_helper"

RSpec.describe ItemComprasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/item_compras").to route_to("item_compras#index")
    end

    it "routes to #show" do
      expect(get: "/item_compras/1").to route_to("item_compras#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/item_compras").to route_to("item_compras#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/item_compras/1").to route_to("item_compras#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/item_compras/1").to route_to("item_compras#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/item_compras/1").to route_to("item_compras#destroy", id: "1")
    end
  end
end
