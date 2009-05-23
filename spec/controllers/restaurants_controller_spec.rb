require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RestaurantsController do

  def mock_restaurant(stubs={})
    @mock_restaurant ||= mock_model(Restaurant, stubs)
  end
  
  describe "GET index" do
    it "assigns all restaurants as @restaurants" do
      Restaurant.stub!(:find).with(:all).and_return([mock_restaurant])
      get :index
      assigns[:restaurants].should == [mock_restaurant]
    end
  end

  describe "GET show" do
    it "assigns the requested restaurant as @restaurant" do
      Restaurant.stub!(:find).with("37").and_return(mock_restaurant)
      get :show, :id => "37"
      assigns[:restaurant].should equal(mock_restaurant)
    end
  end

  describe "GET new" do
    it "assigns a new restaurant as @restaurant" do
      Restaurant.stub!(:new).and_return(mock_restaurant)
      get :new
      assigns[:restaurant].should equal(mock_restaurant)
    end
  end

  describe "GET edit" do
    it "assigns the requested restaurant as @restaurant" do
      Restaurant.stub!(:find).with("37").and_return(mock_restaurant)
      get :edit, :id => "37"
      assigns[:restaurant].should equal(mock_restaurant)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created restaurant as @restaurant" do
        Restaurant.stub!(:new).with({'these' => 'params'}).and_return(mock_restaurant(:save => true))
        post :create, :restaurant => {:these => 'params'}
        assigns[:restaurant].should equal(mock_restaurant)
      end

      it "redirects to the created restaurant" do
        Restaurant.stub!(:new).and_return(mock_restaurant(:save => true))
        post :create, :restaurant => {}
        response.should redirect_to(restaurant_url(mock_restaurant))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved restaurant as @restaurant" do
        Restaurant.stub!(:new).with({'these' => 'params'}).and_return(mock_restaurant(:save => false))
        post :create, :restaurant => {:these => 'params'}
        assigns[:restaurant].should equal(mock_restaurant)
      end

      it "re-renders the 'new' template" do
        Restaurant.stub!(:new).and_return(mock_restaurant(:save => false))
        post :create, :restaurant => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested restaurant" do
        Restaurant.should_receive(:find).with("37").and_return(mock_restaurant)
        mock_restaurant.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :restaurant => {:these => 'params'}
      end

      it "assigns the requested restaurant as @restaurant" do
        Restaurant.stub!(:find).and_return(mock_restaurant(:update_attributes => true))
        put :update, :id => "1"
        assigns[:restaurant].should equal(mock_restaurant)
      end

      it "redirects to the restaurant" do
        Restaurant.stub!(:find).and_return(mock_restaurant(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(restaurant_url(mock_restaurant))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested restaurant" do
        Restaurant.should_receive(:find).with("37").and_return(mock_restaurant)
        mock_restaurant.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :restaurant => {:these => 'params'}
      end

      it "assigns the restaurant as @restaurant" do
        Restaurant.stub!(:find).and_return(mock_restaurant(:update_attributes => false))
        put :update, :id => "1"
        assigns[:restaurant].should equal(mock_restaurant)
      end

      it "re-renders the 'edit' template" do
        Restaurant.stub!(:find).and_return(mock_restaurant(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested restaurant" do
      Restaurant.should_receive(:find).with("37").and_return(mock_restaurant)
      mock_restaurant.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the restaurants list" do
      Restaurant.stub!(:find).and_return(mock_restaurant(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(restaurants_url)
    end
  end

end
