class Game < ActiveRecord::Base
  belongs_to :quest
  
  validates :user_id, :quest_id, :step_id, :presence => true
end
