class SessionsController < ApplicationController

  def create
    player = Player.from_omniauth(env["omniauth.auth"])
    session[:player_id] = player.id
    Pusher['presence_test_channel'].trigger('update_players', {
      message: Player.all.size - 1,
      image: player.image,
      name: player.name
    })
    redirect_to root_url
  end

  def destroy
    
    Player.find(session[:player_id]).destroy
    session[:player_id] = nil
    Pusher['presence_test_channel'].trigger('update_players', {
      message: Player.all.size - 1
    })    
    redirect_to root_url
  end

end
