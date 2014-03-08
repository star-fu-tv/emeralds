class QuizController < ApplicationController
  def join
  	@message = "Hello, how are you?"
	Pusher['test_channel'].trigger('greet', {
  		:greeting => "Hello there!"
	})
  end

  def question
  end

  def winner
  end
end
