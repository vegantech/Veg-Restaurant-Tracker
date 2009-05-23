require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/visits/edit.html.erb" do
  include VisitsHelper
  
  before(:each) do
    assigns[:visit] = @visit = stub_model(Visit,
      :new_record? => false,
      :restaurant => 
    )
  end

  it "renders the edit visit form" do
    render
    
    response.should have_tag("form[action=#{visit_path(@visit)}][method=post]") do
      with_tag('input#visit_restaurant[name=?]', "visit[restaurant]")
    end
  end
end


