class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.string :score
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
