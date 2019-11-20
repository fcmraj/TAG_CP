Feature: GSM031_Sales_Comparison_Report
	As a CFO or Travel Manager, 
	I want to access Report GSM301 
	so that I can view and report on the deliverables within the report. 


@reoprt
Scenario Outline: Preconditions: CFO/Travel Manager logged in to the portal
	Given TAG client portal URL is loaded
	When User enter valid username
	And User enter valid password
	And User clicks login button
	Then Login succeeded

Scenario:1  Initial loading Product Expenditure Comparison Year on Year report 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Product Expenditure Comparison Year on Year report
	Then  Product Expenditure Comparison Year on Year report should be load and display
	And Details of Products table should display
	And Sales by month chart should display
	

Scenario:2  Initial loading Product Expenditure Comparison Year on Year report - Details of Products table
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Product Expenditure Comparison Year on Year report
	And  Product Expenditure Comparison Year on Year report should be load and display
	And Details of Products table should display
	Then Details of Products table should be on top half of the report
	And Client code should be shown on top fo the table
	And Initial load should display current and previous year data


Scenario:3  Initial loading Product Expenditure Comparison Year on Year report - Sales by month chart
	Given Travel Manager navigate to the Management Reports from the navigation menu
	When Select Product Expenditure Comparison Year on Year report
	And  Product Expenditure Comparison Year on Year report should be load and display
	And Details of Products table should display
	Then Details of Products table should be on bottom half of the report
	

Scenario:4  Custom view -  Product Expenditure Comparison Year on Year report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Product Expenditure Comparison Year on Year report
	And  Product Expenditure Comparison Year on Year report should be load and display
	And Details of Products table should display
	When User filter report by single Region
	When User filter report by date (Month and year)	
	Then Report Details of Products table should show respective date based on given filters
	Then Report Sales by month chart should show respective date based on given filters


Scenario:5  Report Layout -  Product Expenditure Comparison Year on Year report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Product Expenditure Comparison Year on Year report
	And  Product Expenditure Comparison Year on Year report should be load and display
	When verify the report layouts 
	Then Report name "Product Expenditure Comparison Year on Year Product"  on top right-hand corner of the report
	And In the next line I see the "Expenditure for the Years xxxx -xxxx" for the selected years
	And The Region of the client on 3rd line
	And Regional Currency should show as "All Transactions are in <currency>" in 4th line
	And 5th line should have a note as "The sales are inclusion of all Airport and Government Taxes"
	And TAG Corparate portal Logo should display on top left corner of the report
	

Scenario:6  Report Layout -  Product Expenditure Comparison Year on Year report footer 
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Product Expenditure Comparison Year on Year report
	And  Product Expenditure Comparison Year on Year report should be load and display
	When verify the report footer
	Then The following message "Report GSM082 Run on xx/xx/xxxx (date).  xx:xx:xx  (time + Time Zone) 


Scenario:7 Details of Products Table Layout -  Product Expenditure Comparison Year on Year report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Product Expenditure Comparison Year on Year report
	And  Product Expenditure Comparison Year on Year report should be load and display
	When verify Details of Products Table Layout in Product Expenditure Comparison Year on Year report
	Then Client name and client code on top of  the table
	And first row shold have Prior Year (1st position), Current Year (2nd Position), Total (3rd Position) and Cumulative (4th Position) labels
	And row two Under Prior Year should have Total Sales  and Cumulative columns
	And row two Under Current Year should have Total Sales  and Cumulative columns
	And row two Under Total should have Differential Sales and %  columns
	And row two Under Cumulative should have Differential Sales and %  columns


Scenario:8 Sales by Month Chart -  Product Expenditure Comparison Year on Year report
	Given Travel Manager navigate to the Management Reports from the navigation menu
	And Select Product Expenditure Comparison Year on Year report
	And  Product Expenditure Comparison Year on Year report should be load and display
	When verify Sales by Month Layout in Product Expenditure Comparison Year on Year report
	Then Sales axis is calibrated in multiples of 50,000
	And Month axis consist of two rows
	And Month axis first row should show  Months i.e. January to Dec 
	And Month axis first row should show  Assigned numbering beneath each month i.e. 01 (for January), 02 (under February) etc.
	And The bar-chart should include a key defining the Transaction Year each colour code represents