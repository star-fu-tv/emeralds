class Player < ActiveRecord::Base
#attr_accessible :points
  def self.from_omniauth(auth)
  	#facebook integration
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |player|
      player.provider = auth.provider
      player.uid = auth.uid
      player.image = auth.info.image
      player.name = auth.info.name
      player.oauth_token = auth.credentials.token
      player.oauth_expires_at = Time.at(auth.credentials.expires_at)
      player.points = 0
      player.save!
    end
  end

   private
    def player_params
      params.require(:player).permit(:points)
    end

end