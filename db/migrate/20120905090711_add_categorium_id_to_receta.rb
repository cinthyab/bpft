class AddCategoriumIdToReceta < ActiveRecord::Migration
  def self.up
    add_column :receta, :categorium_id, :integer
  end

  def delf.down
  	remove_column :receta, :categorium_id
  end

end
