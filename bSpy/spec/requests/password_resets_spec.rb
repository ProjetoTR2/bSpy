require 'rails_helper'

RSpec.describe "PasswordResets", type: :request do
  it "emails user when requesting password reset" do
    user = Factory(:user)
    visit sign_in
    click_link "Forgot your password?"
    fill_in "Email", with => user.mail
    click_button "Send me reset password instructions"
  end
end
