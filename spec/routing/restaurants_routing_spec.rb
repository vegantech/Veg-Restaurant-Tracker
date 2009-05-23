require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RestaurantsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "restaurants", :action => "index").should == "/restaurants"
    end
  
    it "maps #new" do
      route_for(:controller => "restaurants", :action => "new").should == "/restaurants/new"
    end
  
    it "maps #show" do
      route_for(:controller => "restaurants", :action => "show", :id => "1").should == "/restaurants/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "restaurants", :action => "edit", :id => "1").should == "/restaurants/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "restaurants", :action => "create").should == {:path => "/restaurants", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "restaurants", :action => "update", :id => "1").should == {:path =>"/restaurants/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "restaurants", :action => "destroy", :id => "1").should == {:path =>"/restaurants/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/restaurants").should == {:controller => "restaurants", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/restaurants/new").should == {:controller => "restaurants", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/restaurants").should == {:controller => "restaurants", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/restaurants/1").should == {:controller => "restaurants", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/restaurants/1/edit").should == {:controller => "restaurants", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/restaurants/1").should == {:controller => "restaurants", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/restaurants/1").should == {:controller => "restaurants", :action => "destroy", :id => "1"}
    end
  end
end
