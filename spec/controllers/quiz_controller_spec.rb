require 'spec_helper'

describe QuizController do

  describe "GET 'join'" do
    it "returns http success" do
      get 'join'
      response.should be_success
    end
  end

  describe "GET 'question'" do
    it "returns http success" do
      get 'question'
      response.should be_success
    end
  end

  describe "GET 'winner'" do
    it "returns http success" do
      get 'winner'
      response.should be_success
    end
  end

end
