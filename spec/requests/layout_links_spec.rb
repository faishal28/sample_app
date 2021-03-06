require 'rails_helper'

RSpec.describe "LayoutLinks", type: :request do
  
  before(:each) do
    @base_title = "Ruby on Rails Tutorials"
  end
  
  describe "GET Layout Links" do
    it "should have home page at /" do
      visit '/'
      expect(page).to have_title("#{@base_title} | Home")
    end
    
    it "checks existence of about page at /about" do
      visit 'about'
      expect(page).to have_title("#{@base_title} | About")
    end
    
    it "checks existence of about page at /contacts" do
      visit 'contact'
      expect(page).to have_title("#{@base_title} | Contacts")
    end
    
    it "checks existence of about page at /help" do
      visit 'help'
      expect(page).to have_title("#{@base_title} | Help")
    end
    
    it "checks existence of signup page at /signup" do
      visit 'signup'
      expect(page).to have_title("#{@base_title} | Signup")
    end
    
    it "should have right links on layout" do
      visit '/'
      click_link "About"
      expect(page).to have_title("#{@base_title} | About")
      click_link "Contacts"
      expect(page).to have_title("#{@base_title} | Contacts")
      click_link "Help"
      expect(page).to have_title("#{@base_title} | Help")
      click_link "Home"
      expect(page).to have_title("#{@base_title} | Home")
      click_link "Signup"
      expect(page).to have_title("#{@base_title} | Signup")
    end
  end
end
