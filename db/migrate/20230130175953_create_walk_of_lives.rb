class CreateWalkOfLives < ActiveRecord::Migration[7.0]
  def change
    create_table :walk_of_lives do |t|

      t.timestamps
    end
  end
end
