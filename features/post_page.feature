Feature: Lougram post page (aka homepage)
	In order to view all photos in one place
	As a user
	I want to have a page that displays all posts

Background: I am already signed in and on homepage
	Given I am already signed in
	And I am on the homepage

Scenario: visiting the posts page for the first time
	Given No one has ever posted a photo on Lougram
	Then I should see "There are no posts yet"
	And I should find link "Post a Photo"

Scenario: seeing one post
	Given I upload one photo
	And I am on the homepage
	Then I should see one photo
