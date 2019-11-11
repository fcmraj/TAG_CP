Feature: 1443_Executive_Summary_Dashboard
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario Outline: Preconditions: User logged in to the portal
	Given TAG client portal URL is loaded
	When CFO /Travel Manager enter valid username
	And CFO /Travel Manager enter valid password
	And CFO /Travel Manager clicks login button
	Then Login succeeded

Scenario: 01 view Default Regional data dashboard as CFO /Travel Manager  

	1. I can access the Executive Summary Dashboard via the sub-menu navigation panel under Dashboards.

2. Upon opening the Dashboard, I can see the following information (as per attached .png):




Initial Load (Default)

3. Initial loading will be for the regional data of the logged-in user.

4. Initial loading will compare the data between the Current Year and the Previous Year(from Jan-Dec). Current Year data will be reported to the last available Date/Month information on the DWH.  e.g. Jan 2019 - Aug 2019)




Filtering Criteria

5. I can filter the dashboard by following Regions (single selection) and the dashboard shall update its data automatically.

 - UK

 - US 

 - SG

 - AU

 - HK



7.I can filter the report data by Time Period. The following shall appear in the UI via a drop-down menu.


 - Monthly

 - Quarterly

 - Annually



8. When I select Monthly(on 7 above), I am able to first select the Year and then Month from a drop-down list. 



9. When I select Quarterly(on 7 above), I am able to first select the Year and then the required Quarter from a drop-down list. 

9.1 Quarter drop down to have

 -  1st Quarter

 - 2nd Quarter

 - 3rd Quarter

 - 4 Quarter 



10. When I select Yearly(on 7 above), I am able to select the required Year from a drop-down list. 

Report UI

On the top right-hand corner of the dashboard UI, I see-

7. I see the reported currency of the financial data on the Dashboard mentioned here. eg.  GBP 


On the top left-hand corner of the dashboard UI, I see-
11. I see the TAG Corporate Portal name & logo displayed.



On the left-hand side of the dashboard UI 

12. There is a left column on the dashboard UI that captures the financial summary across different product types as well as overall. 

13.The UI layout of the left column to be as per the provided UI.( refer attached .png)

14. Right below the TAG CP logo & name the Total Travel Spend figure is displayed. This figure has been highlighted by increasing the font size compared to the rest of the figures on this column.

15. Each subsection within this column is separated by a green horizontal line.

16. After Total Travel Spend, there is a subsection that displays the Total YoY Variance as a percentage. This figure is in comparison to the previous year's Total Spend. Here also the percentage value has been highlighted by increasing the font size compared to the rest of the percentages on this column.

16.1. There is an up/down movement arrow next to the Total YoY Variance indicating increase or decrease as the case may be. 



17. The next subsection displays 

Total Air Spend as a value
YoY Spend Variance as a % with the indication of positive/negative variance with a up/down arrow respectively following the percentage value 
 No of Tickets.
18. The next subsection displays 

  Total Hotel Spend as a value, 
 YoY Spend Variance as a % with the indication of positive/negative variance with an up/down arrow respectively following the percentage value
 No of Room Nights 
YoY Room Nights Variance as a % with the indication of positive/negative variance with an up/down arrow respectively following the percentage value.
19. The next subsection displays 

Total Rail Spend as a value
YoY Spend Variance as a % with the indication of positive/negative variance with an up/down arrow respectively following the percentage value 
No of Tickets.
20.  The next subsection displays 
Total Car Spend as a value
YoY Spend Variance as a % with the indication of positive/negative variance with an up/down arrow respectively following the percentage value 
Days Rent as a value
YoY Spend Variance as a % with the indication of positive/negative variance with an up/down arrow respectively following the percentage value 
21. The last subsection on the left-hand column displays
Total of Other Spend as a value



 On the right-hand side of the left column above, I see -

22. I see there is a total of 7 dashboards. 



23. At the top, I see a double-line graph for the Monthly Spend YoY comparion for the Current Year and Previous Year Spend. 


23.1 The Y axis of the graph contains the spend amount in 50k intervals.

23.2 The X axis contains the 12 months of the Year in the 'month number - Month(Only the first 3 letters)' format, eg. 01-Jan

23.3 Above the Y axis, I see a global color key definition that displays the two years plotted on the graph with their respective color indicated. This is common for all the graphs/charts below this dashboard. 

23.4 The area below each line graph is colored in the respective color. 



24. Below left of the above Monthly Spend YoY comparion, I see a double bar chart on Air Avg  Price Comparison of the Current Year vs Previous Year. 

24.1 The Y axis captures the average price of Air tickets purchased. 

24.2 For comparison, there is a bar chart each for the average air ticket price value for the current year and for the previous year. 

24. 3 Bar chart color coding is as indicated in 13.3.



25. Below middle of the above Monthly Spend YoY comparion, I see a double bar chart on Hotel Avg  Price Comparison of the Current Year vs Previous Year. 

25.1 The Y axis captures the average price for a Hotel booking. 

25.2 For comparison, there is a bar chart each for the average hotel booking price for the current year and for the previous year. 

25. 3 Bar chart color coding is as indicated in 13.3.



26. Directly below of the Air Avg  Price Comparison chart, I see a double bar chart on Rail Avg  Price Comparison of the Current Year vs Previous Year. 

26.1 The Y axis captures the average price for a Rail ticket. 

26.2 For comparison, there is a bar chart each for the average rail ticket price for the current year and for the previous year. 

26.3 Bar chart color coding is as indicated in 13.3.


27.  Directly below of the Hotel Avg  Price Comparison chart, I see a double horizontal bar graph for Car Avg  Price Comparison of the Current Year vs Previous Year. 

27.1 The Y axis captures the average price for a Car booking. 

27.2 For comparison, there is a bar chart each for the average car booking price for the current year and for the previous year. 

27.3 Bar chart color coding is as indicated in 13.3.



28. Below towards left of the Monthly Spend YoY comparion, I see the Air/Hotel Accepted Savings that displays the Total Air/Hotel Accepted savings for the current year(to-date if the year isn't completed). 

 e.g. Jan 2019 - Aug 2019



29. Directly below Air/Hotel Accepted Savings, towards left of the Monthly Spend YoY comparion, I see the Policy Compliance  for the current year(to-date). 

 e.g. Jan 2019 - Aug 2019

Note: For all colors, UI placements etc please refer to the attached .png.