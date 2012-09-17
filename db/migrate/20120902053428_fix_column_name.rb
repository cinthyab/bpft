class FixColumnName < ActiveRecord::Migration

  def change
    rename_column :receta, :ingedientes, :ingredientes
  end


  def up
  end

  def down
  end
end
