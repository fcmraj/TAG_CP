Feature: 1000_first_login_to_corporate_portal
	

#This feature file covers following stories 
#1000 - First Login to the Corporate Portal
#1001 - Accept the Privacy Policy
#1002 - Accept the Terms of Service
#1496 - Opt-in for Cookie Policy
#1066 - User logout


Scenario:01 very first user login after password creation
@One-time execution
	Given TAG client portal URL is loaded
	When user enter valid username
	And user enter valid password
	When user clicks login button
	And Login succeeded
	When Privacy Policy Agreement should display after first login
	And user Select on Privacy Policy checkbox and submit
	And a response message Response Recorded Successfully
	When user Accept Terms of Services on screen
	And a response message Response Recorded Successfully
	And User accept/Reject cookies policy
	Then User home will display
	And user click logout button
	And user will redirect to login page


Scenario:02 very first user login (Rejects Terms of Service)
@One-time execution
	Given TAG client portal URL is loaded
	When user enter valid username
	And user enter valid password
	When user clicks login button
	And Login succeeded
	And Privacy Policy Agreement should display after first login
	When user Select on Accept Privacy Policy checkbox and submit
	And a response message Response Recorded Successfully
	When user rejects Terms of Services  on TAG Corporate Portal  on screen
	Then the user cannot move further


Scenario:03 very first user login reject Terms and conditions (Reject Privacy Policy)
@One-time execution
	Given TAG client portal URL is loaded
	When user enter valid username
	And user enter valid password
	When user clicks login button
	And Login succeeded
	And Privacy Policy Agreement should display after first login
	When user Select on Reject Privacy Policy
	Then the user cannot move further
