class Question < ActiveRecord::Base
  belongs_to :step
  belongs_to :next_step, :class_name => "Step", :foreign_key=>:next_step_id
  
  validates :step_id, :next_step_id, :presence => true

end
