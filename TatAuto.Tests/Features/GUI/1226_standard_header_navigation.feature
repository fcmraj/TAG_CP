Feature: 1226_standard_header_navigation
As a user
I want to perform an action
So that I can achieve a business goal

#This feature file covers following stories 
#1166 -  Redirected to Home dashboard via the Logo icon
#1167 -  Access to main navigation bar for portal exploration
#1226 - Standard Header Navigation


Scenario: Preconditions: User logged in to the portal
	Given TAG client portal URL is loaded
	When user enter valid username
	And user enter valid password
	And user clicks login button
	Then Login succeeded
	

Scenario:01 Static header validation
	Given user Landed to user home
	When static header should be available
	And organization logo should be available on left most corner
	When the user navigates to reports page
	Then static header should be available
	And organization logo should be available on left most corner
	When the user clicks on the organization logo
	Then user should redirect to user home


Scenario:02 Static header validation dashboard page
	Given user Landed to user home
	And static header should be available
	And organization logo should be available on left most corner
	When the user navigates to the Dashboard page
	Then static header should be available
	And organization logo should be available on left most corner
	When the user clicks on the organization logo
	Then user should redirect to user home
	When the user navigates to reports page
	Then static header should be available
	And organization logo should be available on left most corner
	When the user clicks on the organization logo
	Then user should redirect to user home

Scenario:03 Static header validation Travel Risk Information page
	Given user Landed to user home
	And static header should be available
	And organization logo should be available on left most corner
	When the user navigates to Travel Risk Information page
	Then static header should be available
	And organization logo should be available on left most corner
	When the user clicks on the organization logo
	Then user should redirect to user home
	When the user navigates to reports page
	Then static header should be available
	And organization logo should be available on left most corner
	When the user clicks on the organization logo
	Then user should redirect to user home


Scenario:04 Static header validation user profile page
	Given user Landed to user home
	And static header should be available
	And organization logo should be available on left most corner
	When the user navigates to the user profile page
	Then static header should be available
	And organization logo should be available on left most corner
	When the user clicks on the organization logo
	Then user should redirect to user home
	When the user navigates to reports page
	Then static header should be available
	And organization logo should be available on left most corner
	When the user clicks on the organization logo
	Then user should redirect to user home

Scenario:05 validate Main Navigation Bar properties
	Given user Landed to user home
	And Main Navigation Bar should available on the left side
	And Navigation bar should have following <links>
	
	Examples:
	|links|
	|Dashboard|
	|Reports|
	|Travel Risk information|
	|User Profile|

Scenario:06 validate Main Navigation Bar properties
	Given user Landed to user home
	And Main Navigation Bar should available on the left side
	And the user should be able to access all navigation bar links from any page
	
	Examples:
	|links|
	|Dashboard to Report|
	|Dshaboard to Travel risk information|
	|Dashboard to profile|
	|profile to Report|
	|profile to Travel risk information|
	|profile to Dashboard|
	|Travel risk information to Report|
	|Travel risk information to Dashboard|
	|Travel risk information to profile|
