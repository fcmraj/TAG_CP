Feature: 1071_end_user_login
As a user
I want to perform an action
So that I can achieve a business goal


Scenario:01 TAG  user login
	Given TAG client portal URL is loaded
	When user enter valid '<username>'
	And user enter valid '<password>'
	When user clicks login button
	And Login succeeded
	When user navigated to user profile
	And user role should be '<userRole>' in user profile
	Examples: 
    | name          |  username     | password | userRole       |
    | Admin         |				| password | Admin		    |
    | Client Admin  |				| password | Client Admin   |
    | User          | $%GGH			|          | Travel Manager |
    | User          | $%GGH			|          | Finace Manager |
    | User          | $%GGH			|          | CFO            |

Scenario:02 user login with invalid username
	Given TAG client portal URL is loaded
	When user enter invalid username
	And user enter valid password
	And user clicks login button
	Then Login attempt should fail with rejection message saying "Username is wrong"

Scenario:03 user login with invalid password
	Given TAG client portal URL is loaded
	When user enter valid username
	And user enter invalid password
	And user clicks login button
	Then Login attempt should fail with rejection message saying "Password is wrong"

	#Login fields clear option needs to be added 