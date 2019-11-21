Feature: 1157_Access_to_Dashboards_and_Reports
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

#This feature file covers following stories
#1157 - Access Home Dashboard for Travel Manager
#1164 - Access Home dashboard page to view Travel Analytics
#1165 - Access Dashboards page to view Exec Summary
#1168 - Access to sub menu navigation for reports
#1169 - Access to sub menu navigation for dashboard

@myta
Scenario: Add two numbers
	Given I have entered 50 into the calculator
	And I have entered 70 into the calculator
	When I press add
	Then the result should be 120 on the screen