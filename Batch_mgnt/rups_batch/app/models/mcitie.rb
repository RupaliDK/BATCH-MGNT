class Mcitie < ActiveRecord::Base
  attr_accessible :name, :state_id
belongs_to :state
  has_one :student
  validates :name, :state_id, :presence => true
  validates :name, :format => {:with => /\A[a-zA-z\s]+\z/, :message => "Only letters allowed."}

end

