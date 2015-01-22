@marvel_smoke_tests, @marvel_crystal_vault_smoke_tests
Feature: Smoke Test the Main Menu

  @crystal_menu_functionality
  Scenario: user_can_view_the_available_crystals_for_purchase
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Crystal button
    And I can see Crystal vault after wait
   Then I can see 4 crystal packs
   Then I can see the units store after wait
