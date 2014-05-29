class Post < ActiveRecord::Base
	has_attached_file :picture, styles: { medium: '300x300>' }
	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
	belongs_to :user
	has_and_belongs_to_many :hashtags

	def hashtag
	end
end
