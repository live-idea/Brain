class AddStepIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :step_id, :integer
  end
end
