@Marvel
Feature: Try to click Home button

  @Click_Home_Button
  Scenario: Click_Home_Button
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the hard currency button
   Then I can see the units store after wait

