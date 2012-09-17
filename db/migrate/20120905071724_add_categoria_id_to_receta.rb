class AddCategoriaIdToReceta < ActiveRecord::Migration
  def change
  	add_column :receta, :categoria_id, :string
  end
end
