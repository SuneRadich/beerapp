class RenameFoamAmout < ActiveRecord::Migration

  def change
    rename_column :tastings, :foamAmout, :foamAmount
  end
end
