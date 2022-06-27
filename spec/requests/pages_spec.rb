require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/pages/show"
      expect(response).to have_http_status(:success)
      expect(response.body).to include("/pages/show")
    end

    it "returns http success for other pages" do
      get "/foo/bar"
      expect(response).to have_http_status(:success)
      expect(response.body).to include("/foo/bar")
    end
  end

  describe "redirect" do
    context "with redirections.yml file" do
      it "returns redirect" do
        get "/fr/compare-pricing"
        expect(response).to redirect_to("/fr/pricing#compare-plan")
      end
    end
  end 
end
