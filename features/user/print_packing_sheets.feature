Feature: Print packing sheets
So that I make sure coolers and trailers are packed correctly, I want to know how many of each type of soup should be packed into each route's coolers and how many breads and salads are needed for each delivery day.
 
  Scenario: Print the packing sheet
    When I print the packing sheet
    Then I see a sheet for each route
    And I see an inventory of what should be packed into each cooler for that route
    And I see the number of salads for the route
    And I see the number of breads for the route