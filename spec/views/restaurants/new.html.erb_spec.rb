require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/restaurants/new.html.erb" do
  include RestaurantsHelper
  
  before(:each) do
    assigns[:restaurant] = stub_model(Restaurant,
      :new_record? => true,
      :name => "value for name",
      :vegan => false
    )
  end

  it "renders new restaurant form" do
    render
    
    response.should have_tag("form[action=?][method=post]", restaurants_path) do
      with_tag("input#restaurant_name[name=?]", "restaurant[name]")
      with_tag("input#restaurant_vegan[name=?]", "restaurant[vegan]")
    end
  end
end


