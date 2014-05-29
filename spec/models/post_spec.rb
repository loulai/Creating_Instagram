require 'spec_helper'


describe Post do

	let(:post) { create(:post) }

  describe '#hashtag=' do

  	describe "no hashtags" do
  		it "does nothing" do
  		  post.hashtag_title = " "
  		  expect(post.hashtags).to be_empty
  		end
  	end

    describe "one hashtag" do
      it 'adds a single tag to the post' do
        post.hashtag_title = "#cute"
        expect(post.hashtags.count).to eq 1
      end

       it "prepends # when necessary" do
        post.hashtag_title = "fluffy"
        expect(post.hashtags_title.first).to eq "#fluffy"    
        expect(post.hashtags.count).to eq 1
      end

    end

  end
end


