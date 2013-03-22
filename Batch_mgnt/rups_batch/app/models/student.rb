class Student < ActiveRecord::Base
  attr_accessible :address, :alternate_mobile, :email, :enrollment_date, :first_name, :grade, :last_name, :middle_name, :mobile, :state, :city, :zip_code

end
