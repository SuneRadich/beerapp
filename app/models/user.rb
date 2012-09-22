class User < ActiveRecord::Base
  
  attr_accessible :name, :password, :password_confirmation
  has_secure_password
  

  has_many :tastings

  #Validations
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  # make sure we only save lower case user names
  before_save { |user| user.name = name.downcase }

  #Capitalizes the first letter of the name attribute
  def name_capitalize
  	name.slice(0,1).capitalize + name.slice(1..-1)
  end

end
