class Player < ActiveRecord::Base
	belongs_to :club
	has_attached_file :photo, :styles => { :small => "256x256>" }, :url  => "/assets/players/:id/:basename.:extension", :path => ":rails_root/public/assets/players/:id/:basename.:extension"

	# validates_attachment_presence :photo
	# validates_attachment_size :photo, :less_than => 5.megabytes
	# validates_attachment_content_type :photo, :content_type => ["image/jpeg", "image/png","image/jpg","image/gif"]
	#validates_attachment :small, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png","image/gif"] }
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
