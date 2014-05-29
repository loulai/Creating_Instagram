class Hashtag < ActiveRecord::Base
	has_and_belongs_to_many :posts

	def hashtag
	end

	def hashtag=(tag_names)
	end

end
