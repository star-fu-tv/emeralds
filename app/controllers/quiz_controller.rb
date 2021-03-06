class QuizController < ApplicationController
  @questions = Question.all

  def index

    # CHECK IF DESKTOP OR MOBILE
      browser = request.env['HTTP_USER_AGENT']  
      user_agent = UserAgent.parse(browser) 
      if user_agent.browser == 'Chrome' then
         redirect_to :controller => '/quizmaster', :action => 'start'
      elsif current_player
        redirect_to :controller => '/quiz', :action => 'waiting'
      end

  end

  def correct

    if current_player && Integer(params[:id]) < 4 then
      new_score = current_player.points + 1
      current_player.update_attribute(:points, new_score)
      next_question_id = Integer(params[:id]) + 1
      redirect_to "/quiz/question/" + next_question_id.to_s
    else 
      new_score = current_player.points + 1
      current_player.update_attribute(:points, new_score)
      redirect_to "/quiz/end"
    end
  end

  def incorrect
    if current_player && Integer(params[:id]) < 4 then
      next_question_id = Integer(params[:id]) + 1
      redirect_to "/quiz/question/" + next_question_id.to_s
    else 
      redirect_to "/quiz/end"   
    end
  end

  def join
  	
  end

  def waiting
    if current_player then
      current_player.update_attribute(:points, "0")
    end

  end

  def question
       Pusher['answered'].trigger('answered_question', {
       question: params[:id],
       user: current_player.name
     }) 
  end

  def end 

  end

  def winner
  end
end
