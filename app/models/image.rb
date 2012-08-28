class Image < ActiveRecord::Base 
	attr_accessible :avatar,:tag_name
	belongs_to :album
	mount_uploader :avatar, AvatarUploader 
	
end
