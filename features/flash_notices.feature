Feature: Flash Notices

  Background:
    Given I go to user profile page
    And I see "You need to sign in or sign up before continuing."

  Scenario: Close flash notice
    When I click x on flash message
    Then it should disappear
