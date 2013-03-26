class Batch < ActiveRecord::Base
  attr_accessible :days_of_week, :end_date, :from_time, :grade, :start_date, :title, :to_time

has_many :grades

end
