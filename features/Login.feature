Feature: Admin is able to Login

  Scenario: As an Admin I can log in using valid credentials
    Given I open Wonderworx website
    And I type wonderworx on username field
    And I type wonderlabs2017 on password field
    When I click Login button
    Then I see Dashboard
