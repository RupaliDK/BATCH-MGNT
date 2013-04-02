class Smaster < ActiveRecord::Base
attr_accessible :name

  has_many :mcities
  has_many :students

  validates :name, :presence => true
  validates :name, uniqueness: true
  validates :name, :format => {:with => /\A[a-zA-z\s]+\z/, :message => "Only letters allowed."}

end
