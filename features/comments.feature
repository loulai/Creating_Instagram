Feature: Commenting on photos
	In order to write witty things on pictures
	As a witty user of instagram
	I want to comment as many times as I please

Background: Making sure two photos are uploaded
	Given I am already signed in
	And I upload two photos successfully
	
Scenario: Commenting on (my own) photo
	When I visit the homepage
	And I fill in the "Comment" area with "This was from my nan."
	And I click "Comment"
	Then I should find text "This was from my nan."

Scenario: Having the option to delete a comment
	When I visit the homepage
	And I fill in the "Comment" area with "This was from my nan."
	And I click "Comment"
	Then I should find link "྾"

