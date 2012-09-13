require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Beer App'" do
      visit '/static_pages/home'
      page.should have_content('Beer App')
    end
  end

   describe "Login page" do
    it "should have the content 'Login'" do
      visit '/static_pages/login'
      page.should have_content('Login')
    end
  end

end
