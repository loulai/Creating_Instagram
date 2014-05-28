class HomeController < ApplicationController
	def index
			redirect_to '/posts' if user_signed_in?
	end
end
