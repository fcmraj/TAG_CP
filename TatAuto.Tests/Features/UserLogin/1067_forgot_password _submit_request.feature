Feature: 1067_forgot_password _submit_request
	As a user who has forgotten the password,
	I want to avail the 'forgot password' option
	so that I can reset the password quickly to regain access to the portal.

##This feature file covers following stories
#1067 - Forgot Password - Submit Request
#1292 - Forgot Password - Reset Password

Scenario:01 forgotten password reset
	Given TAG client portal URL is loaded
	When user click on forgot password link
	And enter the email field should appear
	And user enter valid registered email
	When user clicks submit button
	And success message should populate by saying "A password reset link sent to your e-mail address. Please check your emails."
	And navigate to the registered email inbox
	And password reset email should be there with a reset link
	When the user clicks on the reset link within 24 hours
	Then reset link should re-direct the user to reset password page
	When the user clicks on the password field
	Then page should display the password policy
	When user enter valid password  as 'password'
	And No policy violation warning is shown
	When the user re-enter the password in re-enter the field
	And user click create password button
	Then password creation success with success message saying "password successfully created"
	And user will redirect to login page
	When user enter valid username as 'username'
	And user enter valid password  as 'password'
	Then Login succeed
	And User home will display

Scenario:02 forgotten password reset after 24 hours
	Given TAG client portal URL is loaded
	When user click on forgot password link
	Then enter the email field should appear
	When user enter valid registered email
	And user clicks submit button
	Then success message should populate by saying "A password reset link sent to your e-mail address. Please check your emails."
	When user click ok button to close the popup message
	And navigate to the registered email inbox
	Then password reset email should be there with a reset link
	When the user clicks on reset link after 24 hours
	Then reset link should re-direct the user to reset password page with rejection message saying "It looks like you clicked on an invalid password reset link. Please try again"

Scenario:03 forgotten password reset with unregistered email
	Given TAG client portal URL is loaded
	When user click on forgot password link
	Then enter the email field should appear
	When the user enter an unregistered email
	And user clicks submit button
	Then rejection message should populate by saying "Given email not registered"

Scenario:04 forgotten password reset with invalid strings
	Given TAG client portal URL is loaded
	When user click on forgot password link
	Then enter the email field should appear
	When user enter improper <strings>  email
	And user clicks submit button
	Then rejection message should populate by saying "Given email not registered"

	Examples:
	|string  |message|
	|email.com|Given email not registed|
	|test@email|Given email not registed|
	|testemailcom|Given email not registed|
	|<>|Given email not registed|


