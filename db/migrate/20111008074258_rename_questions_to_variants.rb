class RenameQuestionsToVariants < ActiveRecord::Migration
  def up
    rename_table :questions, :variants
  end

  def down
    rename_table :variants, :questions 
  end
end
