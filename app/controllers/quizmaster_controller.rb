class QuizmasterController < ApplicationController
  
  def start
  	@players = Player.all
    @current_question = 1
  end

  def question
      Pusher['question_channel'].trigger('next_question', {
      message: 'next question'
    }) 
  end

  def end
  end
end
