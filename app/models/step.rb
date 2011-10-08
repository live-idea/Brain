class Step < ActiveRecord::Base
  has_many :variants
  belongs_to :quest
  
  validates :description, :quest_id, :title, :presence => true
end
