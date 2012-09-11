class Tasting < ActiveRecord::Base
  attr_accessible :beer_id, :clarityClarity, :clarityPrecipitate, :color, :coment, :date, :foamAmount, :foamColor, :foamDensity, :foamTime, :mouthCarbon, :mouthFill, :mouthTemp, :scentFruit, :scentHopsFlower, :scentMalt, :score, :tasteAftertaste, :tasteBitterness, :tasteSweetness, :user_id
  belongs_to :beer
  belongs_to :user
end
