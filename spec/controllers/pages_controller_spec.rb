require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "School of Software"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

	it "should have the right title" do
	  get 'home'
	  response.should have_selector("title", :content => "#{@base_title} | Home")
	end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
  end

end
