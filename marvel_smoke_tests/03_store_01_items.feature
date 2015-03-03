@marvel_smoke_tests, @Items_Store_smoke_tests
Feature: Smoke Test for store

  @check_the_default_items_in_items_store
  Scenario: check_the_default_items_in_items_store
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Store button on main menu
    Then I can see Store after wait
    And I click Items button in store
    Then I can see Items store screen after wait
    And I wait items to present on screen in items store
    And I wait 3 seconds
    And I should see the following items on screen
      | Name               | Order_from_the_right_of_the_screen | Price | Count |
      | ENERGY REFILL      | 5                                  | 30    | 1     |
      | HEALTH POTION      | 4                                  | 25    | 1     |
      | TEAM HEALTH POTION | 3                                  | 50    | 0     |
      | REVIVE             | 2                                  | 40    | 0     |
      | TEAM REVIVE        | 1                                  | 100   | 0     |

  @purchase_energy_refill_from_items_store
  Scenario: purchase_energy_refill_from_items_store
    Given I click get "ENERGY REFILL" now button
    Then I should get purchase confirmation popup
    And I close the confirmation popup
    And I should see the following items on screen
      | Name               | Order_from_the_right_of_the_screen | Price | Count |
      | ENERGY REFILL      | 5                                  | 30    | 2     |
      | HEALTH POTION      | 4                                  | 25    | 1     |
      | TEAM HEALTH POTION | 3                                  | 50    | 0     |
      | REVIVE             | 2                                  | 40    | 0     |
      | TEAM REVIVE        | 1                                  | 100   | 0     |

  @purchase_health_potion_item_from_items_store
  Scenario: purchase_health_potion_item_from_items_store
    Given I click get "HEALTH POTION" now button
    Then I should get purchase confirmation popup
    And I close the confirmation popup
    And I should see the following items on screen
      | Name               | Order_from_the_right_of_the_screen | Price | Count |
      | ENERGY REFILL      | 5                                  | 30    | 2     |
      | HEALTH POTION      | 4                                  | 25    | 2     |
      | TEAM HEALTH POTION | 3                                  | 50    | 0     |
      | REVIVE             | 2                                  | 40    | 0     |
      | TEAM REVIVE        | 1                                  | 100   | 0     |

#"Swipe don't work - cannot see team refill item"
#  @purchase_team_revive_item_from_items_store

#  @ignore
#  Scenario: purchase_energy_refill_item_from_items_store
#    Given I swipe to left in items store
#    And I should own 0 team revive item
#    And click get team revive now button
#    Then I should get purchase confirmation popup
#    And I close the confirmation popup
#    And I should own 1 team revive item






