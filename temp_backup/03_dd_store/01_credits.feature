@store_credits @store_features
Feature: purchase credits from store
  As an Player
  I want to purchase credits in store

  @purchase_50_credits_package
  Scenario: purchase 50 credits package
    Given I am on my base view
      And I read my current credits balance
      And I open store modal
      And I open credits modal
      And I read my current credits balance in store
      And I read my purchased credits and next free package credits
      And I read my current credits balance
      And I click 50 credits package to purchase
     Then I should get payment confirm alert popup
      And I click "Buy" button on alert popup
      And input app store password "Ph03n1x!" from keyboard if it is required
     Then I should see payment complete message
      And I should get the correct credits