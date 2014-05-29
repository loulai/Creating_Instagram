Feature: Adding hashtags to posts
	In order to add tags to my photos
	As the user who posts the photos
	I want to be able to add hastags in my caption

Background: On the right page, with uploaded photo
	When I sign in with the sign in form
	And I visit the "posts" page
	And I click "Post a Photo"
	And I attach a photo
	And I fill in the "Caption" area with "my cute new pet"

Scenario: Writing a caption that includes hastags
	When I fill in the "Hashtags" area with "cute, it's, fluffy"
	And I click "Create Post"
	Then I should find link "#it"
	And I should find link "#cute"
	And I should find link "#fluffy"


