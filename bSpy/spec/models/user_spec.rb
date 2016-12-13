require 'rails_helper'

RSpec.describe User, type: :model do
  it "create user" do
    lindeman = User.new
    lindeman.destroy
  end
end
