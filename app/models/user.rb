class User < ActiveRecord::Base
  attr_accessible :name, :password
  
  has_many :tastings

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true

  # make sure we only save lower case user names
  before_save { |user| user.name = name.downcase }
end
