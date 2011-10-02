class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      t.integer :step_id
      t.integer :next_step_id
      t.timestamps
    end
  end
end
