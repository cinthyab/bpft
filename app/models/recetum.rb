class Recetum < ActiveRecord::Base
	belongs_to :categorium
	
	attr_accessible :descripcion, :ingredientes, :instrucciones, :titulo, :foto, :categorium_id
	
	has_attached_file :foto, :styles => { :small => "100x100>" }
	
	validates :titulo, :presence => true, :length => {:minimum => 3, :maximum => 50}
	validates :ingredientes, :presence => true
	validates :instrucciones, :presence => true
	validates :descripcion, :length => {:maximum => 150}
 
end
