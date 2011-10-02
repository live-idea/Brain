class Step < ActiveRecord::Base
  has_many :questions
  belongs_to :quest
  
  validates :description, :quest_id, :title, :presence => true
end
