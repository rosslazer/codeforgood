require 'spec_helper'

describe ItemsController do

  describe "GET 'all'" do
    it "returns http success" do
      get 'all'
      response.should be_success
    end
  end

  describe "GET 'broken'" do
    it "returns http success" do
      get 'broken'
      response.should be_success
    end
  end

  describe "GET 'returnable'" do
    it "returns http success" do
      get 'returnable'
      response.should be_success
    end
  end

end
