require 'rails_helper'

RSpec.describe "Home pages", type: :request do
  describe "GET /home pages" do
    it "works! (now write some real specs)" do
      get home pages_path
      expect(response).to have_http_status(200)
    end
  end
end
