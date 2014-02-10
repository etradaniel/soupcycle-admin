Feature: Associate a customer with a delivery location
So that I know where to deliver the customer's order, I want to associate each customer with a delivery location.
 
  Scenario: Assign customer to existing delivery location
    When I select a customer
    And I select the delivery location from the list of existing locations
    And I save
    Then the customer is linked to the delivery location
  
  Scenario: Create new delivery location if none exists
    Given I don't see the customer's location in the list of existing locations
    When I add a new location
    Then I see the form for creating a new location
  
  Scenario: Require a delivery location for each customer
    Given the customer does not have a delivery location
    And I save
    Then I am prompted to indicate the delivery location
  
  Scenario: Process new customers
    Given there is a new customer this week
    When I view the new customer dashboard
    Then I see the list of all new customers that need to be associated with a delivery location and route