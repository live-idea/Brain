# -*- encoding : utf-8 -*-
class AddPhotoColumnToStep < ActiveRecord::Migration
  def self.up
    add_column :steps, :photo_file_name, :string
    add_column :steps, :photo_content_type, :string
    add_column :steps, :photo_file_size, :integer
    add_column :steps, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :steps, :photo_file_name
    remove_column :steps, :photo_content_type
    remove_column :steps, :photo_file_size
    remove_column :steps, :photo_updated_at
  end
end
