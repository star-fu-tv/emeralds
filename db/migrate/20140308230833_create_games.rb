class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number_of_players
      t.integer :current_question
      t.integer :countdown

      t.timestamps
    end
  end
end
