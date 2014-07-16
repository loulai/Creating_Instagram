Feature: Adding hashtags to posts
	In order to add tags to my photos
	As the user who posts the photos
	I want to be able to add hastags in my caption

Background: I am creating a new post
	Given I am already signed in
	And I visit the "posts/new" page

Scenario: Writing a caption that includes hastags
	When I fill in the "Hashtags" area with "cute, it's, fluffy"
	And I click "Create Post"
	Then I should find link "#it"
	And I should find link "#cute"
	And I should find link "#fluffy"


