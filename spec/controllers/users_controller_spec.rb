require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  
  render_views
  
  before(:each) do
    @base_title = "Ruby on Rails Tutorials"
  end
  
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    
    it "checks for the right title" do
      visit 'users/new'
      expect(page).to have_title("#{@base_title} | Signup")
    end
  end

end
