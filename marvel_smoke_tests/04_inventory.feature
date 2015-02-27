@marvel_smoke_tests, @Inventory_smoke_tests
Feature: Smoke Test for Inventory

  @Go_To_Inventory
  Scenario: Go to inventory from main menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Inventory button on main menu
    Then I can see Inventory after wait

  @Inventory_Upgrade_Items_Menu
  Scenario: Go to upgrade items from inventory
    Given I am at Inventory
    And I click upgrade items button in inventory
    Then I can see upgrade items screen after wait
    And I should see GetMore prompt

  @Get_More_Upgrade_Items
  Scenario: Get_More_Upgrade_Items
    Given I click Get More button on GetMore prompt
      And I can see Crystal vault after wait
    # issue here: it takes me back to home page!
      And I click back button to go back to previous screen

  @Sell_Champions_From_Upgrade_Items_Screen
  Scenario: Sell_Champions_From_Upgrade_Items_Screen
    Given I wait and click the Inventory button on main menu
    And I can see Inventory after wait
    And I click upgrade items button in inventory
    Then I can see upgrade items screen after wait
    And I click Sell Champions button on GetMore prompt
    And I can see Champions page after wait
    And I click back button to go back to previous screen

  @Inventory_Items_Menu
  Scenario: Go to my items from inventory
#    Given I wait and click the Inventory button on main menu
#    And I can see Inventory after wait
    And I click items button in inventory
    Then I can see my items screen after wait
    And I click back button to go back to previous screen
