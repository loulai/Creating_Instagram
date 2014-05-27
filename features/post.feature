Feature: Instagram post page
	In order share photos on instagram
	As a user
	I want to post a photos and videos

Scenario: visiting the home page for the first time
	When I visit the homepage
	And I am already signed in
	Then I should see "There are no posts yet"

# Scenario: posting a photo for the first time (and not following anyone)
# 	Given I visit the home page
# 	And I haven't posted a photo before
# 	And I am not following anyone
# 	When I post a photo
# 	Then I should see the photo on the home page