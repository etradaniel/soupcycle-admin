Feature: Calculate batch sizes
So that I know how much soup to cook this week, I want to know the total volume of soup needed for the week and the total soup needed for the first delivery day.
 
  Scenario: Calculate batch sizes
    When I view the week's summary
    Then I see how many pots of each soup are required to meet the week's deliveries, plus extra