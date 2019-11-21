Feature: GSM080_Airline_Sales_Summary
	As a CFO or Travel Manager, 
	I want to access Report  GSM080 
	so that I can view operational information and report in its contents

@report
Scenario Outline: Preconditions: Travel Manager / CFO logged in to the portal
	Given TAG client portal URL is loaded
	When User enter valid username
	And User enter valid password
	And User clicks login button
	Then Login succeeded

Scenario:1  Initial loading Airline Sales Summary report 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Airline Sales Summary report
	Then  Airline Sales Summary report should be load and display
	And Airline Sales Summary table should available 

	

Scenario:2  Initial loading Airline Sales Summary report - Airline Sales Summary Table
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Airline Sales Summary report
	And  Airline Sales Summary report should be load and display
	Then Airline Sales Summary table should available 
    And Client name and client code on top of Airline Sales Summary table.
    And  The table consist of a Airline Name, Sales, Taxes and Total as table headers and with following details.
    And The table should have a vertical scroll to include data for all the row data
    And The last row to have monthly summation, and Sales Summation figures.
   

Scenario:3  Custom view -  Airline Sales Summary report (Start date and End Date)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Airline Sales Summary report
	And  Airline Sales Summary report should be load and display
	When User filter report by single Region
	And User filter report by date (Start date and End Date)	
	Then Airline Sales Summary table should show respective date based on given filters


Scenario:4  Custom view -  Airline Sales Summary report (Monthly)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Airline Sales Summary report
	And  Airline Sales Summary report should be load and display
	When User filter report by single Region
	And User filter report by date (Monthly)	
	Then Airline Sales Summary table should show respective date based on given filters


Scenario:5  Custom view -  Airline Sales Summary report (Quartely)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Airline Sales Summary report
	And  Airline Sales Summary report should be load and display
	When User filter report by single Region
	And User filter report by Quartely	
	Then Airline Sales Summary table should show respective date based on given filters


Scenario:6  Custom view -  Airline Sales Summary report (Annually)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Airline Sales Summary report
	And  Airline Sales Summary report should be load and display
	When User filter report by single Region
	And User filter report by Annually	
	Then Airline Sales Summary table should show respective date based on given filters


Scenario:7  Report Layout -  Airline Sales Summary report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Airline Sales Summary report
	And  Airline Sales Summary report should be load and display
	When verify the report layouts 
	Then Report name "Airline Sales Summary"  on top right-hand corner of the report
	And In the next line should have the "For the Transaction Period" in months selected and run
	And The Region of the client on 3rd line
	And Regional Currency should show as "All Transactions are in <currency>" in 4th line
	And 5th line should have a note as "The sales are inclusion of all Airport and Government Taxes"
	And TAG Corparate portal Logo should display on top left corner of the report
	

Scenario:8  Report Layout -  Airline Sales Summary report footer 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Airline Sales Summary report
	And  Airline Sales Summary report should be load and display
	When verify the report footer
	Then The following message "Report GSM080 Run on xx/xx/xxxx (date).  xx:xx:xx  (time + Time Zone)"