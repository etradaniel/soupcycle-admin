Feature: Manage delivery routes
So that I can make sure our deliveries happen in the most efficient way, I want to adjust the default delivery routes each week based on the week's volume and delivery locations.
 
  Scenario: Create a new route
    When I create a new route
    And I name the route
    And I save
    Then the route is created
  
  Scenario: Set a default route for a delivery location
    When I select a delivery location
    And I add it to a route
    And I save
    Then the location is associated with the route
  
  Scenario: Plan routes for the week
    Given the delivery volume exceeds the capacity for a route
    When I view the route planning page
    Then I see which route might have issues this week
    And I see which routes might have extra capacity
    When I select the problem route
    Then I see the list of delivery locations near the edges of the route
    When I select a delivery location
    And I update its route assignment for the week
    And I save
    Then I see the updated route capacities
  
  Scenario: Reset this week's routes to defaults
    When I view the route planning page
    And I reset the routes to defaults
    Then I see all the route totals with default delivery location assignments
