@store_resources @store_features
Feature: purchase resources from store using credit
  As an Player
  I want to purchase resources in store
  So I can use the resources in my game

  @purchase_10k_alloy
  Scenario: purchase 10k alloy
    Given I launch the game on staging environment and skip fte
      And I am on my base view
      And I read my current credits balance
      And I open store modal
      And I open resources modal
      And I read current "10k Alloy" item balance on resources modal
      And I select resource item "10k Alloy" to buy on resources modal
     Then I should see purchase confirm window
      And the cost on the purchase confirm window is 1 credits
      And I click yes button on purchase confirm window
      And I read current "10k Alloy" item balance on resources modal
     Then I should have 1 more "10k Alloy" item
      And I read my current credits balance in store
     Then 1 credits has been deducted from account

  @purchase_250k_alloy
  Scenario: purchase 250k_alloy
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I read my current credits balance
    And I open store modal
    And I open resources modal
    And I read current "250k Alloy" item balance on resources modal
    And I select resource item "250k Alloy" to buy on resources modal
    Then I should see purchase confirm window
    And the cost on the purchase confirm window is 20 credits
    And I click yes button on purchase confirm window
    And I read current "250k Alloy" item balance on resources modal
   Then I should have 1 more "250k Alloy" item
    And I read my current credits balance in store
    Then 20 credits has been deducted from account

  @purchase_10k_hexium
  Scenario: purchase 10k_hexium
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I read my current credits balance
    And I open store modal
    And I open resources modal
    And I read current "10k Hexium" item balance on resources modal
    And I select resource item "10k Hexium" to buy on resources modal
    Then I should see purchase confirm window
    And the cost on the purchase confirm window is 1 credits
    And I click yes button on purchase confirm window
    And I read current "10k Hexium" item balance on resources modal
    Then I should have 1 more "10k Hexium" item
    And I read my current credits balance in store
    Then 1 credits has been deducted from account

# Cannot perform swipe in the game, so disable this test for now.
#  @purchase_250k_hexium
#  Scenario: purchase 250k_hexium
#  Given I have 100 credits
#    And I open store modal
#    And I open resources modal
#    And I should have 0 "250k Hexium" item on resources modal
#    And I select resource item "250k Hexium" to buy on resources modal
#   Then I should see purchase confirm window
#    And the cost on the purchase confirm window is 20 credits
#    And I click yes button on purchase confirm window
#   Then I should have 1 "250k Hexium" item on resources modal
#    And my credits balance is 80

