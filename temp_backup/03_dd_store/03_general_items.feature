@general_items @store_features
Feature: purchase general items from store using credit
  As an Player
  I want to purchase general items in store
  So I can use the item in my game

  @purchase_name_change_item
  Scenario: purchase name change item
    Given I launch the game on staging environment and skip fte
      And I am on my base view
      And I read my current credits balance
      And I open store modal
      And I open general modal
      And I read current "Name Change" item balance on general modal
      And I select general item "Name Change" to buy on general modal
     Then I should see purchase confirm window
      And the cost on the purchase confirm window is 90 credits
      And I click yes button on purchase confirm window
      And I read current "Name Change" item balance on general modal
      And I read my current credits balance in store
     Then I should have 1 more "Name Change" item on general modal
     Then 90 credits has been deducted from account