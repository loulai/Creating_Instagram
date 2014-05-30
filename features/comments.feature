Feature: Commenting on photos
	In order to write witty things on pictures
	As a witty user of instagram
	I want to comment as many times as I please

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

Scenario: Commenting on (my own) photo
	When I fill in "comments" with "This was from my nan."
	Then I should be on the "posts" page
	And I should see "This was from my nan."

