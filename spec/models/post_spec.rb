require 'spec_helper'


describe Post do

	let(:post) { create(:post) }

  describe '#hashtag=' do

  	describe "no hashtags" do
  		it "does nothing" do
  		  post.hashtag = " "
  		  expect(post.hashtags).to be_empty
  		end
  	end

    describe "one hashtag" do
      it "adds # when necessary" do
        post.hashtag = "fluffy"
        expect(post.hashtags.count).to eq 1
        expect()    
      end
    end

  end
end


