Feature: Instagram post page (which is the same thing as the homepage)
	In order share photos on instagram
	As a user
	I want to post a photos and videos

Scenario: visiting the posts page for the first time
	When I am already signed in
	And I visit the "posts" page
	Then I should see "There are no posts yet"

Scenario: finding link to post a photo
	Given I am already signed in
	And I visit the homepage
	Then I should find link "Create a Post"

Scenario: clicking the link so I can make a new post
	Given I am already signed in
	And I visit the "posts" page
	When I click "Create a Post"
	Then I should see a "Create Post" button



