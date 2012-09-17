class AddAttachmentFotoToReceta < ActiveRecord::Migration
  def self.up
    change_table :receta do |t|
      t.has_attached_file :foto
    end
  end

  def self.down
    drop_attached_file :receta, :foto
  end
end
