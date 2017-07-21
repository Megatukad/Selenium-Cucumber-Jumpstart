Feature: User is able to sign up as Talent

  Scenario: As a User I should be able to sign up as Talent
    Given I go to Wonderworx website
    And I click Sign Up
    Then I select I want to Work
    And I fill all mandatory fields
    When I click Sign Up button
    Then I would got a message to verify my email registration
