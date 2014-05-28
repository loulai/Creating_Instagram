Feature: Instagram post page (which is the same thing as the homepage)
	In order to view photos in onw plave (both my photos and people I follow)
	As a user
	I want to have a working "posts" page

Background: I am already signed in on the "posts" page (also known as homepage)
	When I sign in with the sign in form
	Then I should be on the "posts" page

Scenario: visiting the posts page for the first time
	Then I should see "There are no posts yet"

Scenario: finding link to post a photo
	Then I should find link "Create a Post"


