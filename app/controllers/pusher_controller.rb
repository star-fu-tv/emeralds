class PusherController < ApplicationController
  protect_from_forgery :except => :auth # stop rails CSRF protection for this action

  def auth
    if current_player
      response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
        :player_id => current_player.id, # => required
        :player_info => { # => optional - for example
          :name => current_player.name
          #:email => current_user.email
        }
      })
      render :json => response
    else
      render :text => "Forbidden", :status => '403'
    end
  end
end