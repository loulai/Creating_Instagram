require 'spec_helper'
require 'factory_girl'

describe Post do

	let(:post) { create(:post) }

  describe '#hashtag_names=' do

  	describe "no hashtags" do

  		it "does nothing" do
  		  post.hashtag = " "
  		  expect(post.hashtags).to be_empty
  		end
  	  
  	end
  end
end


