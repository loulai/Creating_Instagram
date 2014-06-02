Feature: Commenting on photos
	In order to express how much I like a photo
	As a user of instagrm
	I want to 'like' a photo

Background: Making sure two photos are uploaded
	When I sign in with the sign in form
	And I visit the "posts" page
	And I click "Post a Photo"
	And I attach a photo
	When I fill in the "Hashtags" area with "cute, fluffy"
	And I click "Create Post"

	And I click "Post a Photo"
	And I attach a photo
	When I fill in the "Hashtags" area with "fluffy, omg, dog"
	And I click "Create Post"