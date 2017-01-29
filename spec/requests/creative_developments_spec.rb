require 'rails_helper'

RSpec.describe "CreativeDevelopments", type: :request do
  describe "GET /creative_developments" do
    it "works! (now write some real specs)" do
      get creative_developments_path
      expect(response).to have_http_status(200)
    end
  end
end
