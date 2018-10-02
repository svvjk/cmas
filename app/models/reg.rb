class Reg < ApplicationRecord
  has_secure_password
  self.primary_key = 'Regid'

validates :Regid, :presence => {:message => "cannot be blank ..."}
  validates_uniqueness_of :Regid
  validates_uniqueness_of :Emailid
  validates :name, :presence => {:message => "cannot be blank ..."}
  validates :contactno, :presence => {:message => "cannot be blank ..."}
  validates :Emailid, :presence => {:message => "cannot be blank ..."}
  validates :currentsemester, :presence => {:message => "cannot be blank ..."}
  
  validates_format_of :Emailid, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
