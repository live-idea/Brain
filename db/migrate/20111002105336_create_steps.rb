class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.text :description
      t.string :result
      t.text :video
      t.timestamps
    end
  end
end
