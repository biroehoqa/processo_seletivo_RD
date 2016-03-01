@general
Feature: Customer Registration success

  Scenario: As a user, I want register one customer

    Given I click add users
    When I click Convidar Usuario
    And I fill out the add fields for user
    And I send invitation
    Then the user successfully invited
