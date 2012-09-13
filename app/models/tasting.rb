class Tasting < ActiveRecord::Base
  attr_accessible :beer_id, :clarityClarity, :clarityPrecipitate, :color, :coment, :date, :foamAmount, :foamColor, :foamDensity, :foamTime, :mouthCarbon, :mouthFill, :mouthTemp, :scentFruit, :scentHopsFlower, :scentMalt, :score, :tasteAftertaste, :tasteBitterness, :tasteSweetness, :user_id
  belongs_to :beer
  belongs_to :user

  #make sure a beer and user has been selected
  validates :beer_id, :user_id, :presence => true		
  
  #make sure there is a score, and that is is less than 8 and more than 0
  validates :score, :numericality => { :greater_than => 0, :less_than => 8 }, :presence => true		


#validates :min_age, :numericality => { :greater_than => 0, :less_than_or_equal_to => :max_age }

#validates :max_age, :numericality => { :less_than_or_equal_to => 100 }

#validates_numericality_of :n, :only_integer => true, :message => "can only be whole number."
#validates_inclusion_of :n, :in => 21..30, :message => "can only be between 21 and 30."
end
