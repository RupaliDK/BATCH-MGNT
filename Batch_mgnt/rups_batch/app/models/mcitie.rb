class Mcitie < ActiveRecord::Base
  attr_accessible :name, :smaster_id
   
  belongs_to :smaster
  has_many :students
   
 validates :name, :smaster_id, :presence => true
  validates :name, :format => {:with => /\A[a-zA-z\s]+\z/, :message => "Only letters allowed."}

end

