class Grade < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :student
end