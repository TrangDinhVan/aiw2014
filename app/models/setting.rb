class Setting < ActiveRecord::Base
	# Banner home
	has_attached_file :banner_home, :styles => { :small => "1900x400>" }, :url  => "/images/site_meta/banner_home_:basename.:extension", :path => ":rails_root/public/images/site_meta/banner_home_:basename.:extension"
	validates_attachment_content_type :banner_home, :content_type => /\Aimage\/.*\Z/
	# Banner Single 
	has_attached_file :banner_single, :styles => { :small => "1900x400>" }, :url  => "/images/site_meta/banner_single_:basename.:extension", :path => ":rails_root/public/images/site_meta/banner_single_:basename.:extension"
	validates_attachment_content_type :banner_single, :content_type => /\Aimage\/.*\Z/
	# Banner search
	has_attached_file :banner_search, :styles => { :small => "1900x400>" }, :url  => "/images/site_meta/banner_search_:basename.:extension", :path => ":rails_root/public/images/site_meta/banner_search_:basename.:extension"
	validates_attachment_content_type :banner_search, :content_type => /\Aimage\/.*\Z/
end
