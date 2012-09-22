class User < ActiveRecord::Base
  attr_accessible :name, :password
  
  has_many :tastings

  validates :name, presence: true, length: { maximum: 50 }
  validates :password, presence: true
end
