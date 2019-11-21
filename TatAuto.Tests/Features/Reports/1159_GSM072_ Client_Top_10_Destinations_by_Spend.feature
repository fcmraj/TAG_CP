Feature: GSM072_ Client_Top_10_Destinations_by_Spend
	As a CFO or Travel Manager, 
	I want to access Report  GSM072 
	so that I can view operational information and report in its contents

@report
Scenario Outline: Preconditions: Travel Manager / CFO logged in to the portal
	Given TAG client portal URL is loaded
	When User enter valid username
	And User enter valid password
	And User clicks login button
	Then Login succeeded

Scenario:1  Initial loading Client Top Ten Destinations by Spend report 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Client Top Ten Destinations by Spend report
	Then  Client Top Ten Destinations by Spend report should be load and display
	And Top 10 Destinations table should display On the top left hand corner
	And Top 10 Destinations pie chart should display On the top right hand corner

	

Scenario:2  Initial loading Client Top Ten Destinations by Spend report - Top 10 Destinations table
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	Then Top 10 Destinations table should display On the top left hand corner
    And Client name and client code on top of Top 10 Destinations table.
    And The table consist of: City (1st row), Spend (middle row) and Percentage (last row) as table headers.
    And The City row is spelt in alphabets.
    And The Spend row consist of summarised spend figures
    And The Percentage row consist of spend in percentages 
    And The last row to display figures for Total Spend, and Total % (always equal to 100%). 


Scenario:3  Initial loading Client Top Ten Destinations by Spend report - Top 10 Destinations pie chart
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	Then Top 10 Destinations pie chart should display On the top right hand corner
	And details of spend in percentage and colour coded based on the spend should shown
	And Colour code representation and description is seeing next to the Pie-Chart


Scenario:4  Custom view -  Client Top Ten Destinations by Spend report (Start date and End Date)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	When User filter report by single Region
	And User filter report by date (Start date and End Date)	
	Then Top 10 Destinations table should show respective date based on given filters
	And Top 10 Destinations pie chart should show respective date based on Top 10 Destinations Table

Scenario:5  Custom view -  Client Top Ten Destinations by Spend report (Monthly)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	When User filter report by single Region
	And User filter report by date (Monthly)	
	Then Top 10 Destinations table should show respective date based on given filters
	And Top 10 Destinations pie chart should show respective date based on Top 10 Destinations Table

Scenario:6  Custom view -  Client Top Ten Destinations by Spend report (Quartely)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	When User filter report by single Region
	And User filter report by Quartely	
	Then Top 10 Destinations table should show respective date based on given filters
	And Top 10 Destinations pie chart should show respective date based on Top 10 Destinations Table

Scenario:7  Custom view -  Client Top Ten Destinations by Spend report (Annually)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	When User filter report by single Region
	And User filter report by Annually	
	Then Top 10 Destinations table should show respective date based on given filters
	And Top 10 Destinations pie chart should show respective date based on Top 10 Destinations Table


Scenario:8  Report Layout -  Client Top Ten Destinations by Spend report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	When verify the report layouts 
	Then Report name "Client Top Ten Destinations by Spend Product"  on top right-hand corner of the report
	And In the next line should have the "For the Transaction Period" in months selected and run
	And The Region of the client on 3rd line
	And Regional Currency should show as "All Transactions are in <currency>" in 4th line
	And 5th line should have a note as "The sales are inclusion of all Airport and Government Taxes"
	And TAG Corparate portal Logo should display on top left corner of the report
	

Scenario:6  Report Layout -  Client Top Ten Destinations by Spend report footer 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Client Top Ten Destinations by Spend report
	And  Client Top Ten Destinations by Spend report should be load and display
	When verify the report footer
	Then The following message "Report GSM082 Run on xx/xx/xxxx (date).  xx:xx:xx  (time + Time Zone)"