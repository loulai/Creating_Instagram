Feature: The initial greeting page, nicknamed 'landing page'
	In order to access instagram's awesomeness
	As a user
	I want to first land on a page that allows me to signup/login

Scenario: Login links for the welcome page
	Given I visit the homepage
	Then I should find text "Login"
	And I should find text "Sign Up"