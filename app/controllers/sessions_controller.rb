class SessionsController < ApplicationController

  def create
    player = Player.from_omniauth(env["omniauth.auth"])
    session[:player_id] = player.id
    redirect_to root_url
  end

  def destroy
    session[:player_id] = nil
    redirect_to root_url
  end

end
