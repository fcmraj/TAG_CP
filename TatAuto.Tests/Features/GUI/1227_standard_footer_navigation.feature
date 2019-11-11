Feature: 1227_standard_footer_navigation

As a user
I want to per+form an action
So that I can achieve a business goal
Meta: 1170,1171 and 1172 stories cover within this story since 1170,1171 and 1172 functionalities are covered within 1227

#This feature file covers following stories 
#1170 - Access to TAG Corporate Portal Privacy Policy
#1171 - Access to TAG Corporate Portal Terms of Service Agreement
#1172 - Access to "contact admin" UI
#1227 - Standard Footer Navigation


Scenario: Preconditions: User logged in to the portal
	Given TAG client portal URL is loaded
	When user enter valid username
	And user enter valid password
	And user clicks login button
	Then Login succeeded
	

Scenario:01 Static footer validation
	Given TAG client portal URL is loaded
	When user enter valid username
	And user enter valid password
	And user clicks login button
	Then Login succeeded
	And user Landed to user home
	And static footer should be available

Scenario:02 Static footer contents validation
	Given user Landed to user home
	When static footer should be available
	Then footer should have following <links>
	
	Examples:
	|links|
	|Contact Admin |
	|Privacy Policy Agreement|
	|Terms of Service Agreement|
	|branding guidelines|


Scenario:03 Static footer Privacy Policy Agreement validation
	Given user Landed to user home
	And static footer should be available
	When user clicks on Privacy Policy Agreement link
	Then user should redirect to Privacy Policy Agreement page

Scenario:04 Static footer Terms of Service Agreement validation
	Given user Landed to user home
	And static footer should be available
	When user clicks on Terms of Service Agreement link
	Then user should redirect to Terms of Service Agreement page


Scenario:05 Static footer Contact Admin validation
	Given user Landed to user home
	And static footer should be available
	When user clicks on Contact Admin link
	Then user should redirect to contact admin page


Scenario:06 Static footer branding guidelines validation
	Given user Landed to user homee
	And static footer should be available
	When the user clicks on branding guidelines link
	Then user should redirect to branding guidelines page
