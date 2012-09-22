class User < ActiveRecord::Base
  attr_accessible :name, :password
  
  has_many :tastings

  validates :name, presence: true
  validates :password, presence: true
end
