class Student < ActiveRecord::Base
  belongs_to :mcities
  belongs_to :smasters
  has_and_belongs_to_many :grades

  has_many :batches
  attr_accessible :address, :alternate_mobile, :email, :enrollment_date, :first_name, :last_name, :middle_name, :mobile, :state, :city, :zip_code, :address_line1, :address_line2, :qualifies_with, :sponsor, :smaster_id, :mcitie_id, :qualifies_with

validates :first_name, :last_name, :mobile, :enrollment_date, :presence => true

validates :first_name,  :last_name, :format => {:with => /\A[a-zA-z]+\Z/, :message => "Only letters allowed."}

validates :middle_name, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}, :allow_blank => true

validates :email, :format => { :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i , :message => "Not a valid email address"}, :allow_blank => true

validates :zip_code, :format => { :with => /^\d{6}$/, :message => "Plesse provide 6 digit pin code" }


end
