Feature: Creating an post 
	In order to share photo
	As a logged in user of instagram
	I want to be able to create a new post (which contains a photo)

Scenario: finding button to create post
	Given I am already signed in
	And I visit the "posts/new" page
	Then I should see "Caption:"
	And I should see a "Create Post" button

Scenario: posting a photo (well, caption)
	Given I am already signed in
	And I visit the "posts/new" page
	When I fill in the "Caption" area with "amazing sunset, look!"
	And I click "Create Post"
	Then I should be on the "posts" page
	And I should see "amazing sunset, look"



