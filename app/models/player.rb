class Player < ActiveRecord::Base
	belongs_to :club
	has_attached_file :photo, :styles => { :small => "256x256>" }, :url  => "/images/players/:basename.:extension", :path => ":rails_root/public/images/players/:basename.:extension"

	# validates_attachment_presence :photo
	# validates_attachment_size :photo, :less_than => 5.megabytes
	# validates_attachment_content_type :photo, :content_type => ["image/jpeg", "image/png","image/jpg","image/gif"]
	#validates_attachment :small, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png","image/gif"] }
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	def self.search(search)
	  if search
	    # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	    Player.where("name LIKE ? OR position LIKE? OR number LIKE? OR nation LIKE? OR height LIKE? OR weight LIKE? OR leg LIKE?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%").all
	  else
	    Club.all
	  end
	end
end
