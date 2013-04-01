class Batch < ActiveRecord::Base
  attr_accessible :days_of_week, :end_date, :from_time, :grade, :start_date, :title, :to_time, :grade_id
 belongs_to :grade
  has_many :batches
  has_many :students, :through => :batches

  validates :title, :grade, :start_date, :end_date, :days_of_week, :from_time, :to_time, :presence => true 
  validate :checkdate
  validate :mytime
  def checkdate
    if end_date && start_date
      errors.add(:end_date, "End date should not be smaller than start date ") if end_date < start_date
    end
  end
  def mytime
    if to_time && from_time
      errors.add(:from_time, "Please enter valid time") if to_time < from_time
    end
      end
end
