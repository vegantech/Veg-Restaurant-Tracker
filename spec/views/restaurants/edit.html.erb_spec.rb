require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/restaurants/edit.html.erb" do
  include RestaurantsHelper
  
  before(:each) do
    assigns[:restaurant] = @restaurant = stub_model(Restaurant,
      :new_record? => false,
      :name => "value for name",
      :vegan => false
    )
  end

  it "renders the edit restaurant form" do
    render
    
    response.should have_tag("form[action=#{restaurant_path(@restaurant)}][method=post]") do
      with_tag('input#restaurant_name[name=?]', "restaurant[name]")
      with_tag('input#restaurant_vegan[name=?]', "restaurant[vegan]")
    end
  end
end


