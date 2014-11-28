class Member < ActiveRecord::Base
	# photo
	has_attached_file :photo, :styles => { :small => "180x180>" }, :url  => "/images/members/:basename.:extension", :path => ":rails_root/public/images/members/:basename.:extension"
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
