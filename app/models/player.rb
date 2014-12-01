class Player < ActiveRecord::Base
	belongs_to :club
	has_attached_file :photo, :styles => { :small => "256x256>" }, :url  => "/images/players/:basename.:extension", :path => ":rails_root/public/images/players/:basename.:extension"
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	def self.search(search)
	  if search
	    Player.where("name LIKE ? OR position LIKE? OR number LIKE? OR nation LIKE? OR height LIKE? OR weight LIKE? OR leg LIKE?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%").all
	  else
	    Player.all
	  end
	end

	def self.get_query(params)
		if params
			params.each do |k,v|
				puts k + " = " + v
				if ( (k != "controller") && (k != "action") )
					@players = Player.where( k+" like ?", "%" + v + "%")				
				end
			end
			@players
		else
			@players = Player.all
		end
	end
end
