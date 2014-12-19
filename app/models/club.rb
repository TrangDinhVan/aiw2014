class Club < ActiveRecord::Base
	has_many :players
	has_many :histories

	# logo Photo
	has_attached_file :photo, :styles => { :small => "256x256>" }, :url  => "/images/clubs/logo/:basename.:extension", :path => ":rails_root/public/images/clubs/logo/:basename.:extension"
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	# host kit
	has_attached_file :host, :styles => { :small => "180x180>" }, :url  => "/images/clubs/kit/:basename.:extension", :path => ":rails_root/public/images/clubs/kit/:basename.:extension"
	validates_attachment_content_type :host, :content_type => /\Aimage\/.*\Z/

	# away kit
	has_attached_file :away, :styles => { :small => "180x180>" }, :url  => "/images/clubs/kit/:basename.:extension", :path => ":rails_root/public/images/clubs/kit/:basename.:extension"
	validates_attachment_content_type :away, :content_type => /\Aimage\/.*\Z/

	def self.search(search)
	  if search
	    Club.where("name LIKE ? OR location LIKE? OR stadium LIKE? OR coach LIKE? OR nick_name LIKE?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%").all
	  else
	    Club.all
	  end
	end

	def self.get_query(params)
		if params
			params.each do |k,v|
				if ( (k != "controller") && (k != "action") )
					@clubs = Club.where( k+" like ?", "%" + v + "%")				
				end
			end
			@clubs
		else
			@clubs = Club.all
		end
	end

end