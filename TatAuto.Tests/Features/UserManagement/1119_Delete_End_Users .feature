Feature: 1119_Delete_End_Users 
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: Delete end client users 
	Given Given TAG client portal URL is loaded
	And Logged in as TAG Super Admin User
	When click on the delete user section under User Management
	And Filter search for client users
	And Select user from user grid
	And Select Delete user on Action tab
	And confirm delete user prompt 
	Then acknowledge message populate saying "User deleted successfully"
	And deleted user should not available in the user grid
	
	Scenario: Delete Admin users 
	Given Given TAG client portal URL is loaded
	And Logged in as TAG Super Admin User
	When click on the delete user section under User Management
	And Filter search for TAG Admin users
	And Select user from user grid
	And Select Delete user on Action tab
	And confirm delete user prompt 
	Then acknowledge message populate saying "User deleted successfully"
	And deleted user should not available in the user grid
 
Scenario 3: Error Scenarios
1. On step 2, if there's a failure to return the results or there is a delay in returning results I can see appropriate error messages.
2. After step 5, if there's a failure to delete the user from the database an appropriate error message must appear. 