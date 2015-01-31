require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  # the test for "Home Page"
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    # it "should have the title 'Home'" do
    #   visit '/static_pages/home'
    #   # expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    #   expect(page).to have_title( "#{base_title} | Home")
    # end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  # the test for "Help Page"
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      # expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
      expect(page).to have_title( "#{base_title} | Help")
    end
  end

  # the test for "About Page"
  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      # expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
      expect(page).to have_title( "#{base_title} | About Us")
    end
  end

  # the test for "Contact"
  describe "Contact Page" do
    # it "should have the content 'About Us'" do
    #   visit '/static_pages/about'
    #   expect(page).to have_content('About Us')
    # end
    
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      # expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
      expect(page).to have_title( "#{base_title} | Contact")
    end
  end
end