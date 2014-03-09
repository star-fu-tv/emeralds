class QuizmasterController < ApplicationController
  
  def start
  	@players = Player.all
  end

  def question
  end

  def end
  end
end
