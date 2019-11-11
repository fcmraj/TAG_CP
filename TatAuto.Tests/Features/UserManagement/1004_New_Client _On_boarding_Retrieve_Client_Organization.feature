Feature: 1004_New_Client _On_boarding_Retrieve_Client_Organization
	As a TAG Super Admin 
	I want to be able to onboard new client organization to the TAG CP 
	so that I can onboard client end-users associated with this account.

#This feature file covers following stories
#1004 - New Client Onboarding - Retrieve Client Organization Info
#1249 - New Client Onboarding - Define Branding (Optional)
#1250 - New Client Onboarding - Define Org.level permissions
@mytag
Scenario Outline: Preconditions: User logged in to the portal
	Given TAG client portal URL is loaded
	When Admin user enter valid username
	And Admin user enter valid password
	And Admin user clicks login button
	Then Login succeeded


Scenario:1 Successful User Client Account Creation and Define Organization level permissions
	Given Admin user navigate to Client Account management from the navigation menu
	When select the <'organization>' from organization drop-down
	And  click on Create Client Account
	Then successful message should show as 'Client Account Successfully Created'
	And create organization should available on organization list
	When select created organization
	And select permissions on Action menu
	And give access for following '<options>'
	And click on Savet Account
	Then successful message should show as 'Permissions set successfully'
	And users belongs to created organizations should be able to access only given '<options'>
	Examples:
	| Options                 | Organization | permited |
	| Reports                 | Org1         | Yes      |
	| Travel Risk Information | Org1         | Yes      |
	| Dashboards              | Org1         | Yes      |
	| Reports                 | Org2         | Yes      |
	| Travel Risk Information | Org2         | Yes      |
	| Dashboards              | Org2         | N0       |
	| Reports                 | Org3         | Yes      |
	| Travel Risk Information | Org3         | No       |
	| Dashboards              | Org3         | No       |
	| Reports                 | Org4         | No       |
	| Travel Risk Information | Org4         | No       |
	| Dashboards              | Org4         | No       |


Scenario:2 Unsuccessful User Client Account Creation - existing client organization
	Given Admin user navigate to Client Account management from the navigation menu
	When select the existing client organization from organization drop-down
	And  click on Create Client Account
	Then Error message should show as 'Client Account already exists'


Scenario:3 Successful User Client Account Creation (customize logo and theme)
	Given Admin user navigate to Client Account management from the navigation menu
	When select the relevant client from organization drop-down
	And click on Create Client Account
	And successful message should show as 'Client Account Successfully Created'
	When select created organization
	And Select Branding on Action menu
	When upload cient organization logo
	And define primary and secondary theme colour
	And click on Savet Account
	Then successful message should show as '<>'
	And customised branding organization should display the cheages

