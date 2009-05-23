require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/visits/new.html.erb" do
  include VisitsHelper
  
  before(:each) do
    assigns[:visit] = stub_model(Visit,
      :new_record? => true,
      :restaurant => 
    )
  end

  it "renders new visit form" do
    render
    
    response.should have_tag("form[action=?][method=post]", visits_path) do
      with_tag("input#visit_restaurant[name=?]", "visit[restaurant]")
    end
  end
end


