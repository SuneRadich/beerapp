class Brewery < ActiveRecord::Base
  attr_accessible :name, :web, :country
  has_many :beers
end
