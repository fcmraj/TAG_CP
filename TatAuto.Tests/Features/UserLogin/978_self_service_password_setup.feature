Feature: 978_SelfServicePasswordSetupfeature
As a user, 
I want a self-service password setup at onboarding 
so that I can gain access to my account on the TAG corporate portal. 
#978 - SelfServicePasswordSetup
#1115 - Enforce Strong Password Policy 
#Mannual execution done


@mytag 
Scenario:01  View Password policy
	Given TAG client portal URL is loaded
	And User is in create password page
	When the user clicks on the password field
	Then page should display the password policy
	And password policy should include below strings
	Examples:
	|policy|
	|password must be at least 8 characters long|
	|password should contain altest one uppercase letter |
	|password should contain altest one lowercase letter|
	|password should contain altest one number |
	|password should contain altest one special character|                              
	

Scenario:02 create new password align with policy
	Given the user is registered to TAG client portal
	And onboard link is forwarded to user's registered email
	When navigating to the registered email inbox
	And user onboard invitation email should be there with an invitation link
	When the user clicks on the invitation link
	And invitation link should re-direct the user to create password page
	When the user clicks on the password field
	And page should display the password policy
	When user enter valid password as <'password'> 
	And password accepted
	And No policy violation warning is shown
	And the user re-enter the password in re-enter the field
	And user click create password button
	Then password creation success with success message saying '<SuccussMsg>'
	And user will redirect to login page

	Examples: 
	| name						  | password | SuccussMsg                    |
	| Valid Password			  | password | password successfully created |

	
Scenario Outline: 03  Create a new password which is not aligned with Password policy
	Given the user is registered to TAG client portal
	And onboard link is forwarded to user's registered email
	When navigating to the registered email inbox
	And user onboard invitation email should be there with an invitation link
	When the user clicks on the invitation link
	And invitation link should re-direct the user to create password page
	And the user clicks on the password field
	And page should display the password policy
	And user enter password as '<password>'
	Then user should acknowledge with policy warning
	When the user re-enter the password in re-enter the field
	Then password creation warning message should show as '<errorMsg>'

Examples: 
    | name                      | password | errorMsg											 |
    | without Numbers           | password | password should contain altest one number.			 |
    | without Uppercase         | password | password should contain altest one uppercase letter |
    | Without lowercase         |          | password should contain altest one lowercase letter |
    | Without special character | $%GGH    | password should contain altest one special character|
    | lesser than minimum length| password | password must be at least 8 characters long		 |                 


Scenario:04  Create not matching password
	Given the user is registered to TAG client portal
	And onboard link is forwarded to user's registered email
	When navigating to the registered email inbox
	And user onboard invitation email should be there with an invitation link
	When the user clicks on the invitation link
	And invitation link should re-direct the user to create password page
	When the user clicks on the password field
	And page should display the password policy
	When user enter password as <'password'>
	And user re-enter the password in re-enter field as '<re-password>'
	Then warning messages should show as '<errorMsg>'
	Examples: 
	 | name               | password | re-password | SuccussMsg |
	 | Unmatched Password | password |             | Passwords do not match! |


Scenario:05  Create new password based on Password policy with re-enter field blank
	Given TAG client portal URL is loaded
	And User is in create password page
	When the user clicks on the password field
	And page should display the password policy
	When user enter valid password <string> as follow
	And password accepted
	And No policy violation warning is shown
	And leave re-enter the password field blank
	Then warning messages should show as "Passwords do not match!"