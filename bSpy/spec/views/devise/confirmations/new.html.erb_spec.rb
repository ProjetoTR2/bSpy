require 'rails_helper'

RSpec.describe "devise/confirmations/new", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
end

=begin
require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  it "renders _event partial for each event" do
    assign(:events, [double(Event), double(Event)])
    render
    expect(view).to render_template(:partial => "_event", :count => 2)
  end
end

RSpec.describe "events/show", :type => :view do
  it "displays the event location" do
    assign(:event, Event.new(:location => "Chicago"))
    render
    expect(rendered).to include("Chicago")
  end
end
=end
