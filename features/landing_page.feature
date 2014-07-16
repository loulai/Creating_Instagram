Feature: The initial greeting page
	In order to access Lougram's awesomeness
	As a user
	I want to first land on a page that prompts me to signup/login

Scenario: Whether or not login links are displayed for the welcome page
	Given I visit the homepage
	Then I should find text "Login"
	And I should find text "Sign Up"