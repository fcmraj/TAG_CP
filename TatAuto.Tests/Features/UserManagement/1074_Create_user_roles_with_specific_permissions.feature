Feature: 1074_Create_user_roles_with_specific_permissions
	As a TAG admin
	I want to be able to create user roles with specific permissions based on client need 
	so that the client end-user(s) can access the features and content-enabled within the created account. 

#This feature file covers following stories
#1074 - Create user roles with specific permissions associated to a role
#1078 - Add new end users to client corporate Portal (and assign user roles)

@skip @manualexecution
Scenario Outline: Preconditions: User logged in to the portal
	Given TAG client portal URL is loaded
	When Admin user enter valid username
	And Admin user enter valid password
	And Admin user clicks login button
	Then Login succeeded

Scenario:1  Create user roles and assaign permissions 
	Given Admin user navigate to the user management from the navigation menu
	When create new user role
	And  configure/define permissions that are required to be associated with a specific user role
	And click Create User Role
	Then successful message should show as 'User role successfully created'
#<Permission Matrix> List 

Scenario:2 Unsuccessful User Role Creation 
 	Given Admin user navigate to the user management from the navigation menu
	When create new user role
	And  configure/define permissions that are required to be associated with a specific user role

Scenario:3 Add New User under the Client's Account
	Given client organization is created
	And Admin user navigate to the user management from the navigation menu
	When click on Add New User
	And Selet Client's Account as '<clientAccount>'
	And Add user's First name as '<fname>'
	And Add user's Last name as '<lname>'
	And Add user's email as '<email>'
	And Selet User Role as '<userRole>
	And click on Create user
	Then successful message should show as 'new user created successfully'
	And Created user should avaliable in the user records
	And system generated onboarding email link should sent to end-user's email '<email>'

Scenario:4 New User creation failure (same email)
	Given client organization is created
	And Admin user navigate to the user management from the navigation menu
	When click on Add New User
	And Selet Client's Account as '<clientAccount>'
	And Add user's First name as '<fname>'
	And Add user's Last name as '<lname>'
	And Add user's email as '<email>' which is already availble 
	And Selet User Role as '<userRole>
	And click on Create user
	Then Error message should show as 'Unable to create a user,the email already exists'

Scenario:4 New User creation failure
	Given client organization is created
	And Admin user navigate to the user management from the navigation menu
	When click on Add New User
	And Selet Client's Account as '<clientAccount>'
	And Add user's First name as '<fname>'
	And Add user's Last name as '<lname>'
	And Add user's email as '<email>' which is already availble 
	And Selet User Role as '<userRole>
	And click on Create user
	Then Error message should show as 'Unable to create a user. Service unavailable.'
