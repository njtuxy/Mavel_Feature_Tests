@pve_chatper_01_node_02
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_01_node_02_tier_1
  Scenario: chapter 01 node 02 tier 01 pve battle
    Given I have 5 a3 phoenix
    And I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 2" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 6 unit "Item 0000" to the map
    Then I wait for the battle report window to show up
    And I click the exit button on battle summary window
    And I wait for base view appears

  @01_chapter_01_node_02_tier_2
  Scenario: chapter 01 node 02 tier 02 pve battle
#    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 2" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 8 unit "Item 0000" to the map
    Then I wait for the battle report window to show up
    And I click the exit button on battle summary window
    And I wait for base view appears

  @01_chapter_01_node_02_tier_3
  Scenario: chapter 01 node 02 tier 03 pve battle
#   Given I relaunch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 2" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 9 unit "Item 0000" to the map
    Then I wait for the battle report window to show up
    And I click the exit button on battle summary window
    And I wait for base view appears

  @01_chapter_01_node_02_tier_4
  Scenario: chapter 01 node 02 tier 04 pve battle
#   Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 2" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 2 unit "Item 0000" to the map
    Then I wait for the battle report window to show up
    And I click the exit button on battle summary window
    And I wait for base view appears

  @01_chapter_01_node_02_tier_5
  Scenario: chapter 01 node 02 tier 05 pve battle
#    And I launch the game on dev environment and skip fte
    And I am on my base view
    And I click attack button on baseview
    And I click campaign button
    And I wait for district view appears on screen
    And I click "chapter 1 node 2" to attack
    And I click attack button on pve map
    And I wait for pve battle view appears on screen
    And I deploy 3 unit "Item 0000" to the map
    Then I wait for the battle report window to show up
    And I click the exit button on battle summary window
    And I wait for base view appears






