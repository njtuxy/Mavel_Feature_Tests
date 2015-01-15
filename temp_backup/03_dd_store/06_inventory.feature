@store_inventory @store_features
Feature: use item in inventory
As an Player
I want to use the items in my store inventory
So I can use them in my game

  @use_10k_alloy_item
  Scenario: use_10k_alloy_item
    Given I launch the game on staging environment and skip fte
      And I am on my base view
      And I open store modal
      And I open inventory modal
      And I wait 3 seconds
      And I read my current "10k Alloy" item balance in inventory
      And I read my current alloy balance
      And I select resource item "10k Alloy" to use on inventory modal
     Then I should see purchase confirm window
      And I click yes button on use item confirm window
      And I read my current "10k Alloy" item balance in inventory
      And I read my current alloy balance
     Then I should have 1 less "10k Alloy" item on inventory modal
      And my alloy balance has increased by 10000

  @use_250k_alloy_item
  Scenario: use_250k_alloy_item
    Given I launch the game on staging environment and skip fte
      And I am on my base view
      And I open store modal
      And I open inventory modal
      And I wait 3 seconds
      And I read my current "250k Alloy" item balance in inventory
      And I read my current alloy balance
      And I select resource item "250k Alloy" to use on inventory modal
     Then I should see purchase confirm window
      And I click yes button on use item confirm window
      And I read my current "250k Alloy" item balance in inventory
      And I read my current alloy balance
     Then I should have 1 less "250k Alloy" item on inventory modal
      And my alloy balance has increased by 250000


#  @use_10k_hexium_item
#  Scenario: use_10k_hexium_item
#    Given I have 0 alloy
#      And I have 0 hexium
#      And I open store modal
#      And I open inventory modal
#     Then I should have 1 "10k Hexium" item on inventory modal
#      And I select resource item "10k Hexium" to use on inventory modal
#     Then I should see purchase confirm window
#      And I click yes button on use item confirm window
#     Then I should have 0 "10k Hexium" item on inventory modal
#      And my hexium balance is 10000

#  @use_250k_hexium_item
#  Scenario: use_250k_hexium_item
#    Given I have 0 alloy
#      And I have 0 hexium
#      And I open store modal
#      And I open inventory modal
#     Then I should have 1 "250k Hexium" item on inventory modal
#      And I select resource item "250k Hexium" to use on inventory modal
#     Then I should see purchase confirm window
#      And I click yes button on use item confirm window
#     Then I should have 0 "250k Hexium" item on inventory modal
#      And my hexium balance is 250000





