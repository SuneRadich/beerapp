class Brewery < ActiveRecord::Base
  attr_accessible :name, :web
  has_many :beers
end
