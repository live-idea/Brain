class AddQuestIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :quest_id, :integer
  end
end
