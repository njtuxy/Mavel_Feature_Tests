@Payment
Feature: Credits package payment
  As an Player
  I want to purchase one credit package
  So I can use credit to buy other goods

@package_50
Scenario: purchase 50 credits package
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I open credits window
    And I read my purchased credits and next free package credits
    And I read my current credits balance
    And I click 50 credits package to purchase
   Then I should get payment confirm alert popup
    And I click "Buy" button on alert popup
    And input app store password "Ph03n1x!" from keyboard if it is required
    And I should get the correct credits

@package_100
Scenario: purchase 100 credits package
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I open credits window
    And I read my current credits balance
    And I read my purchased credits and next free package credits
    And I click 100 credits package to purchase
   Then I should get payment confirm alert popup
    And I click "Buy" button on alert popup
    And input app store password "Ph03n1x!" from keyboard if it is required
    And I should get the correct credits
    And I should get free package alert window if I purchased enough credits

@package_240
Scenario: purchase 240 credits package
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I open credits window
    And I read my current credits balance
    And I read my purchased credits and next free package credits
    And I click 240 credits package to purchase
   Then I should get payment confirm alert popup
    And I click "Buy" button on alert popup
    And input app store password "Ph03n1x!" from keyboard if it is required
    And I should get the correct credits
    And I should get free package alert window if I purchased enough credits

@package_375
Scenario: purchase 375 credits package
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I open credits window
    And I read my current credits balance
    And I read my purchased credits and next free package credits
    And I click 375 credits package to purchase
   Then I should get payment confirm alert popup
    And I click "Buy" button on alert popup
    And input app store password "Ph03n1x!" from keyboard if it is required
    And I should get the correct credits
    And I should get free package alert window if I purchased enough credits

@package_665
Scenario: purchase 665 credits package
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I open credits window
    And I read my current credits balance
    And I read my purchased credits and next free package credits
    And I click 665 credits package to purchase
   Then I should get payment confirm alert popup
    And I click "Buy" button on alert popup
    And input app store password "Ph03n1x!" from keyboard if it is required
    And I should get the correct credits
    And I should get free package alert window if I purchased enough credits


@package_1600
Scenario: purchase 1600 credits package
  Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I open credits window
    And I read my current credits balance
    And I read my purchased credits and next free package credits
    And I click 1600 credits package to purchase
   Then I should get payment confirm alert popup
    And I click "Buy" button on alert popup
    And input app store password "Ph03n1x!" from keyboard if it is required
    And I should get the correct credits
    And I should get free package alert window if I purchased enough credits
