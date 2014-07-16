Feature: Commenting on photos
	In order to express how much I like a photo
	As a user of instagrm
	I want to 'like' a photo

Background: Making sure two photos are uploaded
  Given I am already signed in
	And I upload two photos successfully

@javascript
Scenario: Liking a photo
	When I click "❤ 0"
	Then I should see "❤ 1"

@javascript
Scenario: Unliking a photo
	Given I have liked a photo
	When I click "❤ 1"
	Then I should see "❤ 0"