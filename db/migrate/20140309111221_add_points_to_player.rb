class AddPointsToPlayer < ActiveRecord::Migration
  def change
  	add_column :players, :points, :integer
  end
end
