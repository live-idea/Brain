# -*- encoding : utf-8 -*-
class Step < ActiveRecord::Base
  has_many :variants, :dependent => :destroy

  belongs_to :quest
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :description, :quest_id, :title, :presence => true
  #validates :title, :uniqueness => true
end
