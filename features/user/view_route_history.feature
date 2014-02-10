Feature: View route history
So that I can answer questions from customers who believe we screwed up and forgot their order, I want to see a list of all the orders that were on hold for a given week.
 
  Scenario: View route history
    When I select a delivery week date
    Then I see the list of orders that were on hold for the week