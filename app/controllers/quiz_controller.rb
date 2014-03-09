class QuizController < ApplicationController
  @questions = Question.all

  def index

    # CHECK IF DESKTOP OR MOBILE
      browser = request.env['HTTP_USER_AGENT']  
      user_agent = UserAgent.parse(browser) 
      if user_agent.browser == 'Chrome' then
         redirect_to :controller => '/quizmaster', :action => 'start'
      end  
      if current_player then
        redirect_to :controller => '/quiz', :action => 'waiting'
      end

  end

  def correct
    if current_player then
      new_score = Integer(current_player.score)
      new_score += 1
      current_player.score = new_score
    end
    redirect_to "quiz/question" + params[:id]
  end

  def start

  end

  def join
  	
  end

  def waiting


  end

  def question
    #   Pusher['question_channel'].trigger('next_question', {
    #   message: 'next question'
    # }) 
  end

  def winner
  end
end
