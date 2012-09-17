class CreateReceta < ActiveRecord::Migration
  def change
    create_table :receta do |t|
      t.string :titulo
      t.text :descripcion
      t.text :ingredientes
      t.text :instrucciones
      
      t.timestamps
    end
  end
end
