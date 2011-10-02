class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
     t.string :name
     t.integer :number_of_questions
     t.string :difficulty
      t.timestamps
    end
  end
end
