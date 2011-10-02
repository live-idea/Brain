class Quest < ActiveRecord::Base
  has_one :game
  belongs_to :user
  
  validates :name, :number_of_questions, :presence => true
end
