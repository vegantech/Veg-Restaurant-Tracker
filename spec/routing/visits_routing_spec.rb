require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe VisitsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "visits", :action => "index").should == "/visits"
    end
  
    it "maps #new" do
      route_for(:controller => "visits", :action => "new").should == "/visits/new"
    end
  
    it "maps #show" do
      route_for(:controller => "visits", :action => "show", :id => "1").should == "/visits/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "visits", :action => "edit", :id => "1").should == "/visits/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "visits", :action => "create").should == {:path => "/visits", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "visits", :action => "update", :id => "1").should == {:path =>"/visits/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "visits", :action => "destroy", :id => "1").should == {:path =>"/visits/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/visits").should == {:controller => "visits", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/visits/new").should == {:controller => "visits", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/visits").should == {:controller => "visits", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/visits/1").should == {:controller => "visits", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/visits/1/edit").should == {:controller => "visits", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/visits/1").should == {:controller => "visits", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/visits/1").should == {:controller => "visits", :action => "destroy", :id => "1"}
    end
  end
end
