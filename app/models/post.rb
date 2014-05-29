class Post < ActiveRecord::Base
	has_attached_file :picture, styles: { medium: '300x300>' }
	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
	belongs_to :user
	has_and_belongs_to_many :hashtags

	def hashtag_title

	end

	def hashtag_title=(hashtag_title)
		return if hashtag_title.blank?

		formatted_name = "#" + hashtag_title
		hashtag = Hashtag.create(title: formatted_name)
		self.hashtags << hashtag

	end
end
