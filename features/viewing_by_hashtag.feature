Feature: View all photos that have common hashtag
	In order to see all photos of a similar theme
	As a user of instagram
	I want to see all similar photos displayed on one page

Background: Posting two photos with a common hashtag
	When I sign in with the sign in form
	And I visit the "posts" page
	And I click "Post a Photo"
	And I attach a photo
	When I fill in the "Hashtags" area with "cute"
	And I click "Create Post"

	And I click "Post a Photo"
	And I attach a photo
	When I fill in the "Hashtags" area with "cute"
	And I click "Create Post"

Scenario: Viewing all the photos with a simliar hashtag
	When I click the link "#cute"
	Then I should see two photos




	
