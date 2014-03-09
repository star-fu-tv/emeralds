class QuizController < ApplicationController
  
  def index
    # CHECK IF DESKTOP OR MOBILE
      browser = request.env['HTTP_USER_AGENT']  
      user_agent = UserAgent.parse(browser) 
      if user_agent.browser == 'Chrome' then
         redirect_to :controller => '/quizmaster', :action => 'start'
      end   
  end

  def start

  end

  def join
  	
  end

  def waiting

  end

  def question
  end

  def winner
  end
end
