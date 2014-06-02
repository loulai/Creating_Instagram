Feature: Commenting on photos
	In order to express how much I like a photo
	As a user of instagrm
	I want to 'like' a photo

Background: Making sure two photos are uploaded
	When I sign in with the sign in form
	And I visit the "posts" page
	And I click "Post a Photo"
	And I attach a photo
	And I click "Create Post"

@javascript
Scenario: Liking a photo
	When I click "❤ 0"
	And I wait 1 second
	Then I should see "❤ 1"