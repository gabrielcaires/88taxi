require 'rails_helper'

RSpec.describe "Taxis", type: :request do
  describe "GET /taxis" do
    it "works! (now write some real specs)" do
      get taxis_path
      expect(response).to have_http_status(200)
    end
  end
end
