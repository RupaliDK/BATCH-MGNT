class Mcitie < ActiveRecord::Base
  has_one :students
  belongs_to :state
  attr_accessible :name, :state

 validates :name, :state_id, :presence => true
  validates :name, :format => {:with => /\A[a-zA-z\s]+\z/, :message => "Only letters allowed."}

end

