class Beer < ActiveRecord::Base
  attr_accessible :brewery_id, :name, :alcohol
  belongs_to :brewery
  has_many :tastings

end
