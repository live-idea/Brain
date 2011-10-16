# -*- encoding : utf-8 -*-
class AddTitleToStep < ActiveRecord::Migration
  def change
    add_column :steps, :title, :text
  end
end
