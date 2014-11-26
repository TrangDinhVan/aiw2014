class Club < ActiveRecord::Base
	has_many :players
	has_many :histories
	has_attached_file :photo, :styles => { :small => "256x256>" }, :url  => "/assets/clubs/:id/:basename.:extension", :path => ":rails_root/public/assets/clubs/:id/:basename.:extension"

	# validates_attachment_presence :photo
	# validates_attachment_size :photo, :less_than => 5.megabytes
	# validates_attachment_content_type :photo, :content_type => ["image/jpeg", "image/png","image/jpg","image/gif"]
	#validates_attachment :small, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png","image/gif"] }
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	has_attached_file :host, :styles => { :small => "180x180>" }, :url  => "/assets/clubs/:id/host_:basename.:extension", :path => ":rails_root/public/assets/clubs/:id/host_:basename.:extension"
	validates_attachment_content_type :host, :content_type => /\Aimage\/.*\Z/

	has_attached_file :away, :styles => { :small => "180x180>" }, :url  => "/assets/clubs/:id/away_:basename.:extension", :path => ":rails_root/public/assets/clubs/:id/away_:basename.:extension"
	validates_attachment_content_type :away, :content_type => /\Aimage\/.*\Z/


	def self.search(search)
	  if search
	    # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	    Club.where("name LIKE ? OR location LIKE? OR stadium LIKE? OR coach LIKE? OR nick_name LIKE?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%").all
	  else
	    Club.all
	  end
	end

end