@segmentation_leads
Feature: Create segmentation leads

  Scenario: As a user, I want create segmentation leads

    Given I click Relacionar menu
    When I choose Segmentação de Leads
    And I click Criar Segmentacao
    Then fill out Segmentation Leads fields and save segmentation
