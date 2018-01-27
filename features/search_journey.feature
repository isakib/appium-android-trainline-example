Feature: Search locations

  As A Trainline user
  I am able to search for departure and destinations
  So that I can make a potential booking

  Scenario: User can set a Departure and Destination station
    Given I have launched the Trainline app
    And I can search for and enter a "Destination" station
    Then I can search for and enter a "Departure" station
    Then I can verify that the Departure and Destination stations have been set



