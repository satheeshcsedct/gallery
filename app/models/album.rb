class Album < ActiveRecord::Base
  attr_accessible :description, :name, :artist,:avatar,:images,:images_attributes,:user_id,:tag_name
belongs_to :user
has_many :images , :dependent => :destroy
accepts_nested_attributes_for :images, :reject_if =>  :all_blank
end
