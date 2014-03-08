class QuizController < ApplicationController
  def join
  	@message = "Hello, how are you?"
	# Pusher.app_id = '68083'
	# Pusher.key = 'af206ffe9c7f4e25ed4b'
	# Pusher.secret = '04201eebd4dfd5a89e66'    	
  end

  def question
  end

  def winner
  end
end
