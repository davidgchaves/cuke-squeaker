Feature: See Messages

  Scenario: See another user's messages
    Given there is a User
    And the User has posted the message "I'm cuke-squeaking"
    When I visit the page for the User
    Then I see "I'm cuke-squeaking"
