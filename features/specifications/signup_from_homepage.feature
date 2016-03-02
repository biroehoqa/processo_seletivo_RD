Feature: Register customer

  The objective of this test is register customer and logout customer,
  but I will create the new customer and login with him.
  The scenario will fail and will create an evidence on screenshot_on_failed path.

  Scenario: As a user, I would sign up from homepage

    Given I click Cadastre-se button
    When I fill out registration fields
    Then Sign up with sucess
