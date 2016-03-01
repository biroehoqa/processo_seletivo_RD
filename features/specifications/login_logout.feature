@general
Feature: Register and Login and Logout

  The objective of this test is register customer and logout customer,
  but I will create the new customer and login with him.

  Scenario: As a user, I want register one customer and logout

    Given I click logout
    When I create a new customer
    Then try invite the new user
