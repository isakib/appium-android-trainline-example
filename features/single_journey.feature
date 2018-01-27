Feature: Single Journey Booking

  As A Trainline user
  I am able to make a Single journey booking
  So that I can visit people

  Scenario: User is able to enter details for a Single Journey booking
    Given I have launched the Trainline app
    And I choose to make a Single journey departing Today, now
    And I choose "3" Adults
    When I choose the "26-30 Railcard" Railcard
    Then I can verify that the "26-30 Railcard" Railcard is seen




