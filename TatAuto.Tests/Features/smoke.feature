Feature: Login
	In order check my dashboards
	As a TAG CP user
	I want to be able to login to the dashboard

@mytag
Scenario: Successful Login by Admin User
	Given I Navigate to the Login page
	When I Login with Username 'admin' and Password '123qwe' on the Login Page
	Then the User Name 'admin' Should be seen on the Dashboard Page
	And user logout from TAG client portal


Scenario Outline: UnSuccessful Login 
	Given I Navigate to the Login page
	When I Unsucessfully Login with Username '<username>' and Password '<password>' on the Login Page
	Then I Should See Error Message '<errorMsg>' on the Login Page

Examples: 
 | name             | username | password | errorMsg                      |
 | Blank Username   |          | password |                               |
 | Blank Password   | admin    |          |                               |
 | invalid Password | admin    | $%GGH    | Invalid user name or password |
 | invalid username | 66987    | password | Invalid user name or password |

