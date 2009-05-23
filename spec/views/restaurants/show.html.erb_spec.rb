require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/restaurants/show.html.erb" do
  include RestaurantsHelper
  before(:each) do
    assigns[:restaurant] = @restaurant = stub_model(Restaurant,
      :name => "value for name",
      :vegan => false
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/false/)
  end
end

