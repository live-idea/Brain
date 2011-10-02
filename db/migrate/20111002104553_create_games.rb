class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :quest_id
      t.datetime :start_time
      t.integer :scores
      t.integer :step_id
      t.integer :stepcount
      t.timestamps
    end
  end
end
