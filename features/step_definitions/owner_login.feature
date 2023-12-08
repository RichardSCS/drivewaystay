Feature: create login for owner
	As an owner of parking spots
	So that I can list my parking spots and availibilty
	I want to create a owner login and log in


	Scenario: create a new login
		When I am on the home page
		And I click 'Owner Log In'
		And I click 'New Owner? Register here'
		And I fill in 'Username' with 'Owner5'
		And I fill in 'Password' with 'password'
		And I fill in 'Name' with 'Owner Bob'
		And I fill in 'Street' with '123 Wally Way'
		And I fill in 'City' with 'Howthorne'
		And I fill in 'State' with 'CA'
		And I click 'Create Account'
		Then I should be on Owner Login Page
