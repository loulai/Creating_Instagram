Feature: The sign in page
	In order to log into instagram
	As a potential user
	I want to be able to create an account

Scenario: Signing up for the first time
	Given I visit the homepage
	When I click the link 'Sign Up'
	Then I should find some fields for signing up
