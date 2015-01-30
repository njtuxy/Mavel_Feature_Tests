@marvel_smoke_tests, @Inventory_smoke_tests
Feature: Smoke Test for Inventory

  @Go_To_Inventory
  Scenario: Go to Store from main menu
    Given I click the Staging Environment
      And I wait the login screen to present
      And I wait and click the Inventory button on main menu
     Then I can see Inventory after wait

  @Inventory_Upgrade_Items_Menu
  Scenario: Go to upgrade items from inventory
    Given I am at Inventory
      And I click upgrade items button in inventory
     Then I can see upgrade items screen after wait
      And I click back button to go back to previous screen
     Then I am at Inventory

  @Inventory_Items_Menu
  Scenario: Go to my items from inventory
    Given I am at Inventory
    And I click items button in inventory
    Then I can see my items screen after wait
    And I click back button to go back to previous screen
    Then I am at Inventory