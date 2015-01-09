@pve_chatper_01_node_01
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_01_node_01_tier_1
  Scenario: chapter 01 node 01 tier 01 pve battle
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 1" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 10 units to the map
    And I select "machine Gun" to attack
   Then I wait for the battle report window to show up
    And I wait 4 seconds
    And I click the exit button on battle summary window
    And I wait for base view appears

  @01_chapter_01_node_01_tier_2
  Scenario: chapter 01 node 01 tier 02 pve battle
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 1" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 10 units to the map
    And I select "machine Gun" to attack
    Then I wait for the battle report window to show up
    And I wait 4 seconds
    And I click the exit button on battle summary window
    And I wait for base view appears

  @01_chapter_01_node_01_tier_3
  Scenario: chapter 01 node 01 tier 03 pve battle
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 1" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 10 units to the map
    And I select "machine Gun" to attack
    Then I wait for the battle report window to show up
    And I wait 4 seconds
    And I click the exit button on battle summary window
    And I wait for base view appears
    And I should get rate DD alert popup
    And I click "Cancel" button on alert popup

  @01_chapter_01_node_01_tier_4
  Scenario: chapter 01 node 01 tier 04 pve battle
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 1" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 10 units to the map
    And I select "machine Gun" to attack
    Then I wait for the battle report window to show up
    And I wait 4 seconds
    And I click the exit button on battle summary window
    And I wait for base view appears

  @01_chapter_01_node_01_tier_5
  Scenario: chapter 01 node 01 tier 05 pve battle
    Given I have 10 m3 talos
    And I relaunch the game on dev environment and skip fte
    And I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 1" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 10 units to the map
    And I select "machine Gun" to attack
    Then I wait for the battle report window to show up
    And I wait 4 seconds
    And I click the exit button on battle summary window
    And I wait for base view appears