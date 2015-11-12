require 'rails_helper'
require 'spec_helper'

RSpec.describe Polish, :type => :controller do
  describe "GET index" do
    it "returns all the polishes" do
      FactoryGirl.create :polish, brand: "test brand"
      FactoryGirl.create :polish, brand: "test brand 2"

      # get "/polishes", {}, { "Accept" => "application/json" }

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      polish_brands = body.map { |m| m["brand"] }

      expect(polish_brands).to match_array(["test brand",
                                           "test brand 2"])
    end
  end
end