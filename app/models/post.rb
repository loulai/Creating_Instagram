class Post < ActiveRecord::Base
	has_attached_file :picture, styles: { medium: '300x300>' }
	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
	belongs_to :user
	has_and_belongs_to_many :hashtags
	has_many :comments

	def hashtag_title

	end

	def hashtag_title=(hashtag_title)
		return if hashtag_title.blank?
		formatted_hashtags = hashtag_title.split(/,\s?/).map {|each_hashtag_title| "#" + each_hashtag_title.delete('#').downcase }.uniq
		formatted_hashtags.each {|each_formatted_hashtag| self.hashtags << Hashtag.find_or_create_by(title: each_formatted_hashtag)}
	end

	def comment
	end
end
