Feature: The initial greeting page, nicknamed 'landing page'. landingpage==homepage
	In order to access instagram's awesomeness
	As a user
	I want to first land on a page that allows me to signup/login

Scenario: Whether or not login links are displayed for the welcome page
	Given I visit the homepage
	Then I should find text "Login"
	And I should find text "Sign Up"

Scenario: Redirecting to the posts page once signed in
	Given I am already signed in
	When I visit the homepage
	Then I should be on the "posts" page
