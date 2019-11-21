Feature: GSM082_Expenditure_by_Product
	As a CFO or Travel Manager, 
	I want to access Report  GSM082 
	so that I can view operational information and report in its contents

@report
Scenario Outline: Preconditions: Travel Manager / CFO logged in to the portal
	Given TAG client portal URL is loaded
	When User enter valid username
	And User enter valid password
	And User clicks login button
	Then Login succeeded

Scenario:1  Initial loading Annual Expenditure by Product report 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Annual Expenditure by Product report
	Then  Annual Expenditure by Product report should be load and display
	And Product, Sales by month table should display On the top left hand corner
	And  Transactions by Product to be displayed as a pie-chart on Lower left hand side
	And Transactions by Product  tableshould display on Lower right hand side
	

Scenario:2  Initial loading Annual Expenditure by Product report - Product, Sales by month table
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Annual Expenditure by Product report
	And  Annual Expenditure by Product report should be load and display
	And Product, Sales by month table should display
	Then Product, Sales by month table should display On the top left hand corner
	And The table should be extendable based on the inclusion of additional month as selected by the user
	And The extension should be included to the right starting with the oldest month
	And The table consist of a Product Description, Month and Total as table headers
	And The last row to be labeled Total with monthly summation, and Sales Summation figures


Scenario:3  Initial loading Annual Expenditure by Product report - Transactions by Product pie chart
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Annual Expenditure by Product report
	And  Annual Expenditure by Product report should be load and display
	Then Transactions by Product pie chart should display on Lower left hand side
	And details of spend in percentage and colour coded based on the consumption should shown


	Scenario:4  Initial loading Annual Expenditure by Product report - Transactions by Product Table
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Annual Expenditure by Product report
	And  Annual Expenditure by Product report should be load and display
	Then Transactions by Product table should display on Lower right hand side
	And The table consist of a Product Description,  Sales Value and % as column headers and last row to be labeled as Total
	And Table to include the cumulative sales value which is the same value in Total Sales column in Product, Sales by month table
	And  sales value for each product against the Total sales for all products to be displayed as a percentage in % column
	And  The last row to display figures for Total Sales, and Total % (always equal to 100%)
	

Scenario:4  Custom view -  Annual Expenditure by Product report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Annual Expenditure by Product report
	And  Annual Expenditure by Product report should be load and display
	When User filter report by single Region
	When User filter report by date (Start date and End Date)	
	Then Product, Sales by month table should show respective date based on given filters
	Then  Transactions by Product Table should show respective date based on given filters
	Then Transactions by Product pie chart should show respective date based on Transactions by Product Table


Scenario:5  Report Layout -  Annual Expenditure by Product report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Annual Expenditure by Product report
	And  Annual Expenditure by Product report should be load and display
	When verify the report layouts 
	Then Report name "Annual Expenditure by Product Product"  on top right-hand corner of the report
	And In the next line should have the transaction period in months selected and run
	And The Region of the client on 3rd line
	And Regional Currency should show as "All Transactions are in <currency>" in 4th line
	And 5th line should have a note as "The sales are inclusion of all Airport and Government Taxes"
	And TAG Corparate portal Logo should display on top left corner of the report
	

Scenario:6  Report Layout -  Annual Expenditure by Product report footer 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Annual Expenditure by Product report
	And  Annual Expenditure by Product report should be load and display
	When verify the report footer
	Then The following message "Report GSM082 Run on xx/xx/xxxx (date).  xx:xx:xx  (time + Time Zone)"