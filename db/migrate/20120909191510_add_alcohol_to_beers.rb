class AddAlcoholToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :alcohol, :integer
  end
end
