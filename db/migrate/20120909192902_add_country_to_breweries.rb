class AddCountryToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :country, :string
  end
end
