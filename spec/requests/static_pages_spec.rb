require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Beer App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Beer App')
    end
  end
end
