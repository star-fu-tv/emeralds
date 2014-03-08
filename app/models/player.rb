class Player < ActiveRecord::Base

  def self.from_omniauth(auth)
  	#facebook integration
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |player|
      player.provider = auth.provider
      player.uid = auth.uid
      player.name = auth.info.name
      player.oauth_token = auth.credentials.token
      player.oauth_expires_at = Time.at(auth.credentials.expires_at)
      player.save!
    end
  end

end