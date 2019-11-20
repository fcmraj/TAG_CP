Feature: 1163_GSM042_Savings_Rejected
	As a CFO or Travel Manager, 
	I want to access Report  GSM042
	so that I can view operational information and report in its contents

@report
Scenario Outline: Preconditions: Travel Manager / CFO logged in to the portal
	Given TAG client portal URL is loaded
	When User enter valid username
	And User enter valid password
	And User clicks login button
	Then Login succeeded

Scenario:1  Initial loading Air Fare Savings Rejected report 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Air Fare Savings Rejected report
	Then  Air Fare Savings Rejected report should be load and display
	And Air Fare Savings Rejected table should available 

	

Scenario:2  Initial loading Air Fare Savings Rejected report - Air Fare Savings Rejected Table
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	Then Air Fare Savings Rejected table should available 
    And Client name and client code on top of Air Fare Savings Rejected table.
    And  The table consist of a Airline Name, Sales, Taxes and Total as table headers and with following details.
    And The table should have a vertical scroll to include data for all the row data
    And The last row to have monthly summation, and Sales Summation figures.
   

Scenario:3  Custom view -  Air Fare Savings Rejected report (Start date and End Date)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by date (Start date and End Date)	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:4  Custom view -  Air Fare Savings Rejected report (Monthly)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by date (Monthly)	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:5  Custom view -  Air Fare Savings Rejected report (Quartely)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by Quartely	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:6  Custom view -  Air Fare Savings Rejected report (Annually)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by Annually	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:7  Report Layout -  Air Fare Savings Rejected report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When verify the report layouts 
	Then Report name "Air Fare Savings Rejected"  on top right-hand corner of the report
	And In the next line should have the "For the Transaction Period" in months selected and run
	And The Region of the client on 3rd line
	And Regional Currency should show as "All Transactions are in <currency>" in 4th line
	And 5th line should have a note as "The sales are inclusion of all Airport and Government Taxes"
	And TAG Corparate portal Logo should display on top left corner of the report
	

Scenario:8  Report Layout -  Air Fare Savings Rejected report footer 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When verify the report footer
	Then The following message "Report GSM042 Run on xx/xx/xxxx (date).  xx:xx:xx  (time + Time Zone)"	As a CFO or Travel Manager, 
	I want to access Report  GSM042
	so that I can view operational information and report in its contents

@report
Scenario Outline: Preconditions: Travel Manager / CFO logged in to the portal
	Given TAG client portal URL is loaded
	When User enter valid username
	And User enter valid password
	And User clicks login button
	Then Login succeeded

Scenario:1  Initial loading Air Fare Savings Rejected report 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Air Fare Savings Rejected report
	Then  Air Fare Savings Rejected report should be load and display
	And Air Fare Savings Rejected table should available 

	

Scenario:2  Initial loading Air Fare Savings Rejected report - Air Fare Savings Rejected Table
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	Then Air Fare Savings Rejected table should available 
    And Client name and client code on top of Air Fare Savings Rejected table.
    And  The table consist of a Airline Name, Sales, Taxes and Total as table headers and with following details.
    And The table should have a vertical scroll to include data for all the row data
    And The last row to have monthly summation, and Sales Summation figures.
   

Scenario:3  Custom view -  Air Fare Savings Rejected report (Start date and End Date)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by date (Start date and End Date)	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:4  Custom view -  Air Fare Savings Rejected report (Monthly)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by date (Monthly)	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:5  Custom view -  Air Fare Savings Rejected report (Quartely)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by Quartely	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:6  Custom view -  Air Fare Savings Rejected report (Annually)
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When User filter report by single Region
	And User filter report by Annually	
	Then Air Fare Savings Rejected table should show respective date based on given filters


Scenario:7  Report Layout -  Air Fare Savings Rejected report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When verify the report layouts 
	Then Report name "Air Fare Savings Rejected"  on top right-hand corner of the report
	And In the next line should have the "For the Transaction Period" in months selected and run
	And The Region of the client on 3rd line
	And Regional Currency should show as "All Transactions are in <currency>" in 4th line
	And 5th line should have a note as "The sales are inclusion of all Airport and Government Taxes"
	And TAG Corparate portal Logo should display on top left corner of the report
	

Scenario:8  Report Layout -  Air Fare Savings Rejected report footer 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Air Fare Savings Rejected report
	And  Air Fare Savings Rejected report should be load and display
	When verify the report footer
	Then The following message "Report GSM042 Run on xx/xx/xxxx (date).  xx:xx:xx  (time + Time Zone)"