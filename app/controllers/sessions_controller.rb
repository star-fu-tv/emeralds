class SessionsController < ApplicationController

  def create
    player = Player.from_omniauth(env["omniauth.auth"])
    session[:player_id] = player.id
    Pusher['presence_test_channel'].trigger('update_players', {
      online: Player.all.size,
      image: player.image,
      name: player.name,
      action: 'create'
    })
    redirect_to root_url
  end

  def destroy
    
    Player.find(session[:player_id]).destroy
    session[:player_id] = nil
    Pusher['presence_test_channel'].trigger('update_players', {
      online: Player.all.size,
      action: 'delete'
    })    
    redirect_to root_url
  end

end
