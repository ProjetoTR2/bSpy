require 'rails_helper'

RSpec.describe Ability, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

=begin
require "rails_helper"

RSpec.describe User, :type => :model do
  it "orders by last name" do
    lindeman = User.create!(first_name: "Andy", last_name: "Lindeman")
    chelimsky = User.create!(first_name: "David", last_name: "Chelimsky")

    expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
  end
end
=end
