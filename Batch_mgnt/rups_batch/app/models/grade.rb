class Grade < ActiveRecord::Base
has_and_belongs_to_many :students

  attr_accessible :title, :description
  has_many :batches, :dependent => :destroy
  validates :title, :description, :presence => true 

end