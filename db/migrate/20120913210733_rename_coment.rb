class RenameComent < ActiveRecord::Migration

  def change
    rename_column :tastings, :coment, :comment
  end
end