require 'spec_helper'

describe QuizmasterController do

  describe "GET 'start'" do
    it "returns http success" do
      get 'start'
      response.should be_success
    end
  end

  describe "GET 'question'" do
    it "returns http success" do
      get 'question'
      response.should be_success
    end
  end

  describe "GET 'end'" do
    it "returns http success" do
      get 'end'
      response.should be_success
    end
  end

end
