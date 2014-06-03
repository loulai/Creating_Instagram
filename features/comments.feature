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
	Given I visit the "posts" page
	When I fill in the "Comment" area with "This was from my nan."
	And I click "Comment"
	Then I should find text "This was from my nan."

Scenario: Having the option to delete something
	Given I visit the "posts" page
	And I fill in the "Comment" area with "This was from my nan."
	And I click "Comment"
	Then I should find link "྾"

