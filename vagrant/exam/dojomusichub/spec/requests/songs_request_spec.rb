require 'rails_helper'

RSpec.describe "Songs", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/songs/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/songs/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/songs/show"
      expect(response).to have_http_status(:success)
    end
  end

end
