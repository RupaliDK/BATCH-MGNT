class Smaster < ActiveRecord::Base
attr_accessible :name

 has_many :cities
  has_one :students

  


end
