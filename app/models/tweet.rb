class Tweet < ActiveRecord::Base
	belongs_to :user 
	
include PublicActivity::Model
tracked owner: ->(controller, model) { controller && controller.current_user }
  validates :content, length: { maximum: 140 }
  validates_presence_of :content
#mount_uploader :image, ImageUploader
end
