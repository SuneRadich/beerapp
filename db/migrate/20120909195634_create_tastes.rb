class CreateTastes < ActiveRecord::Migration
  def change
    create_table :tastes do |t|
      t.date :date
      t.integer :beer_id
      t.integer :user_id
      t.integer :scentHopsFlower
      t.integer :scentFruit
      t.integer :scentMalt
      t.integer :foamAmout
      t.integer :foamColor
      t.integer :foamDensity
      t.integer :foamTime
      t.integer :clarityClarity
      t.integer :clarityPrecipitate
      t.integer :color
      t.integer :tasteSweetness
      t.integer :tasteBitterness
      t.integer :tasteAftertaste
      t.integer :mouthTemp
      t.integer :mouthCarbon
      t.integer :mouthFill
      t.integer :score
      t.text :coment

      t.timestamps
    end
  end
end
