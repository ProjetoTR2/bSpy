require 'rails_helper'

RSpec.describe "HomePages", type: :request do
  describe "GET /home_pages" do
    it "works! (now write some real specs)" do
      get home_pages_path
      expect(response).to have_http_status(200)
    end
  end
end

=begin
require 'rails_helper'

RSpec.describe "home page", :type => :request do
  it "displays the user's username after successful login" do
    user = FactoryGirl.create(:user, :username => "jdoe", :password => "secret")
    visit "/login"
    fill_in "Username", :with => "jdoe"
    fill_in "Password", :with => "secret"
    click_button "Log in"

    expect(page).to have_selector(".header .username", :text => "jdoe")
  end
end
=end
