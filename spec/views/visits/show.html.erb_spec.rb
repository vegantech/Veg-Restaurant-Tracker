require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/visits/show.html.erb" do
  include VisitsHelper
  before(:each) do
    assigns[:visit] = @visit = stub_model(Visit,
      :restaurant => 
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(//)
  end
end

