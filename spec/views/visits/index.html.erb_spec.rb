require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/visits/index.html.erb" do
  include VisitsHelper
  
  before(:each) do
    assigns[:visits] = [
      stub_model(Visit,
        :restaurant => 
      ),
      stub_model(Visit,
        :restaurant => 
      )
    ]
  end

  it "renders a list of visits" do
    render
    response.should have_tag("tr>td", .to_s, 2)
  end
end

