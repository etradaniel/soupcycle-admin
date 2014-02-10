Feature: Manage delivery locations
So that I can plan a route and know how each customer wants to receive their delivery when I arrive, I want to manage a list of delivery locations
 
  Scenario: Create a new location
    When I create a new delivery location
    And I enter an address
    And I enter a location name
    And I enter delivery instructions
    And I save
    Then the new location is created
    
  Scenario: Edit an existing location
    When I select an existing location
    And I edit the address
    And I edit the name
    And I edit the delivery instructions
    And I save
    Then the location is updated