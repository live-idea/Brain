# -*- encoding : utf-8 -*-
class Quest < ActiveRecord::Base
  has_one :game
  belongs_to :user
  has_many :steps
  validates :name, :number_of_questions, :presence => true
  validates :name, :uniqueness => true
end
