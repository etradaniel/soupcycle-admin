Feature: Print route sheets
So that I know what to deliver to whom, I want to print all the route sheets for the day's deliveries
 
  Scenario: Print route sheets
    When I print the route sheets
    Then I see the list of all orders for each route for the day
    And I see the orders grouped by delivery location
    And I see the order sorted into a route order
  
  Scenario: Print office sheets
    Given a delivery location has special instructions
    When I print all the office sheets
    Then I see a page for each location with special instructions
    And I see the page has the list of orders for the loction
    And I see the page contains the special insructions