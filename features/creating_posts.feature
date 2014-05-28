Feature: Creating an post 
	In order to share photo
	As a logged in user of instagram
	I want to be able to create a new post (which contains a photo)

Background: user is already logged in and is on the create posts page
	Given I am already signed in
	And I visit the "posts/new" page

Scenario: finding button to create post
	Then I should see "Caption:"
	And I should see a "Create Post" button

Scenario: posting a photo (well caption)
	When I fill in the "Caption" area with "amazing sunset, look!"
	And I click "Create Post"
	Then I should be on the "posts" page
	And I should see "amazing sunset, look"





