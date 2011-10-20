class CreateInterestings < ActiveRecord::Migration
  def change
    create_table :interestings do |t|
      t.text :body
      t.timestamps
    end
  end
end
