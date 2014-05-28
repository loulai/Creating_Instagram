Feature: Instagram post page (which is the same thing as the homepage)
	In order to view photos in onw plave (both my photos and people I follow)
	As a user
	I want to have a working "posts" page

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
	When I visit the "posts" page
	Then I should find link "Create a Post"


