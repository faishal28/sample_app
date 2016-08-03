require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views
  
  before(:each) do
    @base_title = "Ruby on Rails Tutorials"
  end

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    
    it "checks for right tile" do
      visit 'pages/home'
      expect(page).to have_title("#{ @base_title } | Home")
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      visit 'pages/contact'
      expect(response).to have_http_status(:success)
    end
    
    it "checks for right title" do
      visit 'pages/contact'
      expect(page).to have_title("#{ @base_title } | Contacts")
    end
  end
  
  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    
    it "checks for the right title" do
      visit 'pages/about'
      expect(page).to have_title("#{ @base_title } | About")
    end
  end
  
  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
    
    it "checks for the right title" do
      visit 'pages/help'
      expect(page).to have_title("#{ @base_title } | Help")
    end
  end
end
