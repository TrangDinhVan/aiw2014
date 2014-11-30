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
			@clubs = Club.where("name like ?", "%" + params[:name] + "%") if params[:name]
			@clubs = Club.where("location like ?", "%" + params[:location] + "%") if params[:location]
			@clubs = Club.where("stadium like ?", "%" + params[:stadium] + "%") if params[:stadium]
			@clubs = Club.where("coach like ?", "%" + params[:coach] + "%") if params[:coach]
			@clubs = Club.where("president like ?", "%" + params[:president] + "%") if params[:president]
			@clubs = Club.where("nick_name like ?", "%" + params[:nick_name] + "%") if params[:nick_name]
			@clubs
		else
			@clubs = Club.all
		end
	end

end