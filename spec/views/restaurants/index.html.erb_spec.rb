require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/restaurants/index.html.erb" do
  include RestaurantsHelper
  
  before(:each) do
    assigns[:restaurants] = [
      stub_model(Restaurant,
        :name => "value for name",
        :vegan => false
      ),
      stub_model(Restaurant,
        :name => "value for name",
        :vegan => false
      )
    ]
  end

  it "renders a list of restaurants" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end

