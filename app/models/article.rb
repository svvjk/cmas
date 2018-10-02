class Article < ApplicationRecord
  belongs_to :reg
  self.primary_key = 'Articleno'
  belongs_to :reg ,foreign_key: 'Regno'
  validates :Articleno, :presence => {:message => "cannot be blank ..."}
  validates_uniqueness_of :Articleno
  validate :Regno_exists
  validates :Regno, :presence => {:message => "cannot be blank ..."}
  validates :abstract, :presence => {:message => "cannot be blank ..."}
  validates :Articletype, :presence => {:message => "cannot be blank ..."}
  validates :Language, :presence => {:message => "cannot be blank ..."}
  validates :article, :presence => {:message => "cannot be blank ..."}
 
 def Regno_exists
  return false if Reg.find_by_id(self.Regno).nil?
end 
 
end
