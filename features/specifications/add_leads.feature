@general
Feature: Add Leads

  Scenario: As a user, I want add leads

    Given I click Relacionar menu
    When I choose Base de Leads
    And I click inserir Leads manualmente
    And fill out Leads fields
    Then Leads add with sucess
