@marvel_smoke_tests, @Items_Store_smoke_tests
Feature: Smoke Test for store

  @purchase_energy_refill_item_from_items_store
  Scenario: purchase_energy_refill_item_from_items_store
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Store button on main menu
    Then I can see Store after wait
    And I click Items button in store
    Then I can see Items store screen after wait
    And I wait items to present on screen in items store
     And I wait 5 seconds
    And I should own 0 energy refill item
    And click get energy refill now button
    Then I should get purchase confirmation popup
    And I close the confirmation popup
    And I should own 1 energy refill item

  @purchase_health_potion_item_from_items_store
  Scenario: purchase_energy_refill_item_from_items_store
   Given I should own 0 health potion item
    And click get health potion now button
    Then I should get purchase confirmation popup
    And I close the confirmation popup
    And I should own 1 health potion item

#"Swipe don't work - cannot see team refill item"
#  @purchase_team_revive_item_from_items_store
  @ignore
  Scenario: purchase_energy_refill_item_from_items_store
    Given I swipe to left in items store
    And I should own 0 team revive item
    And click get team revive now button
    Then I should get purchase confirmation popup
    And I close the confirmation popup
    And I should own 1 team revive item






