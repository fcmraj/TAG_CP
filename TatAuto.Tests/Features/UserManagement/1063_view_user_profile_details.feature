Feature: 1063_view_user_profile_details
	Narrative:
	As a logged-in user
	I must be able to view my user profile details
	so that I can verify my information is accurate.
#This feature file covers following stories 
#1293 - Keep Me Logged-In
#1294 - View Password in Plain-Text
#1063 - View user profile details
#1065 - Update user profile details
#1076 - Update  User Account Details


Scenario:01 TAG Super Admin user profile
	Given TAG client portal URL is loaded
	When user enter valid username as 'username'
	And user enter valid password as 'password'
	When user click on view password plain text icon
	And entered paaword can be see as plain text
	When user tick on keep me login checkbox
	And user clicks login button
	Then Login succeeded
	And user navigated to user home
	And user select user profile
	And validate the following '<fields>'
	And the result should be same as '<value>'
	
	Examples:
	|fields		    |value|
	|First name		|     |
	|Last Name		|      |
	|Role			|TAG Super Admin|
	|Email			|          |
	|Profile Picture|	|


Scenario:02 TAG Admin user profile
	Given TAG client portal URL is loaded
	When user enter valid username as 'username'
	And user enter valid password as 'password'
	And user clicks login button
	Then Login succeeded
	And user navigated to user home
	And user select user profile
	And validate the following '<fields>'
	And the result should be same as '<value>'
	
	Examples:
	|fields|value|
	|First name|     |
	|Last Name|      |
	|Role|TAG Admin|
	|Email|          |
	|Profile Picture||


Scenario:03 Client Admin user profile
	Given TAG client portal URL is loaded
	When user enter valid username as 'username'
	And user enter valid password as 'password'
	And user clicks login button
	Then Login succeeded
	And user navigated to user home
	And user select user profile
	And validate the following '<fields>'
	And the result should be same as '<value>'
	
	Examples:
	|fields|value|
	|First name|     |
	|Last Name|      |
	|Role|Client Admin|
	|Email|          |
	|Profile Picture||



Scenario:04 Finace Manager user profile
	Given TAG client portal URL is loaded
	When user enter valid username as 'username'
	And user enter valid password as 'password'
	And user clicks login button
	Then Login succeeded
	And user navigated to user home
	And user select user profile
	And validate the following '<fields>'
	And the result should be same as '<value>'
	
	Examples:
	|fields|value|
	|First name|     |
	|Last Name|      |
	|Role|Finace Manager|
	|Email|          |
	|Profile Picture||



Scenario:05 Travel Manager user profile
	Given TAG client portal URL is loaded
	When user enter valid username as 'username'
	And user enter valid password as 'password'
	And user clicks login button
	Then Login succeeded
	And user navigated to user home
	And user select user profile
	And validate the following '<fields>'
	And the result should be same as '<value>'
	
	Examples:
	|fields|value|
	|First name|     |
	|Last Name|      |
	|Role|Travel Manager|
	|Email|          |
	|Profile Picture||


Scenario:6  Update Profile Picture via the top navigation bar
	Given TAG client portal URL is loaded
	When user enter valid username as 'username'
	And user enter valid password as 'password'
	And user clicks login button
	And Login succeeded
	And user navigated to user home
	When Select upload profile picture menu by clicking on profile picture icon
	And browse and upload a '<Type>' file as profile picture with '<size>'
	And  configure/define permissions that are required to be associated with a specific user role
	And click Create User Role
	Then action responce message should show as '<responce>'
	And succeefully changed profile picture should show as user profile picture
	Examples: 
	| Type            | Size      | responce       |
	| JEPG            | Over 5MB  | Upload failed  |
	| JEPG            | below 5MB | Upload success |
	| PNG             | below 5MB | Upload success |
	| Non image files | any size  | Upload failed  |


Scenario:7 Update Profile Picture via the left navigation panel
	Given TAG client portal URL is loaded
	When user enter valid username as 'username'
	And user enter valid password as 'password'
	And user clicks login button
	And Login succeeded
	And user navigated to user home
	When access the Profile page via the left navigation panel
	And select upload profile picture
	And browse and upload a '<Type>' file as profile picture with '<size>'
	And  configure/define permissions that are required to be associated with a specific user role
	And click Create User Role
	Then action responce message should show as '<responce>'
	And succeefully changed profile picture should show as user profile picture
	Examples: 
	| Type            | Size      | responce       |
	| JEPG            | Over 5MB  | Upload failed  |
	| JEPG            | below 5MB | Upload success |
	| PNG             | below 5MB | Upload success |
	| Non image files | any size  | Upload failed  |

	Scenario:08 Update user profile as admin user
	Given TAG client portal URL is loaded
	When Admin user enter valid username
	And Admin user enter valid password
	And Admin user clicks login button
	When Login succeeded
	And user navigated to user home
	And filter and select user profile using '<filterfield>'
	And update the '<updatefields>' with following '<updatevalue>'
	Then user should acknoledge with "field updated"
	And  updated user information should show in user grid
	
	Examples:
	|filter field	| updatefields		| updatevalue     |
	| email			| First name		|                 |
	| email			| Last Name			|                 |
	| email			| Role				| TAG Super Admin |
	| email			| Email				|                 |

