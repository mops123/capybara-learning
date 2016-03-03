Feature: User Registration

  Background:
    Given I go to main page
    And I click in navbar "Sign up"

  Scenario: Failed registration
    When I fill "Password" field with "password"
    And I fill "Password confirmation" field with "password"
    And I click button "Sign up"
    Then I should see navigation links for guest user
    And I should see sign up error message

  Scenario: Successful registration
    When I fill "Email" field with "jill@example.com"
    And I fill "Password" field with "password"
    And I fill "Password confirmation" field with "password"
    And I click button "Sign up"
    Then I should see navigation links for signed in user
    And I should see welcome message
