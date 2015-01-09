@pve_chatper_01_node_09
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_01_node_9_tier_1_to_3
  Scenario: chapter_01_node_9_tier_1_to_3_pve
    Given I have 43 a3 phoenix
    And I launch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 1 node 9" with 14 units for 3 times

  @01_chapter_01_node_9_tier_4_to_5
  Scenario: chapter_01_node_9_tier_4_to_5_pve
    Given I have 43 a3 phoenix
    And I relaunch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 1 node 9" with 20 units for 2 times

#  @01_chapter_01_node_09
#  Scenario: chapter 01 node 09 pve battle
#    Given I have m3 talos
#    And I have a3 phoenix
#    And I launch the game on dev environment and skip fte
#    And I am on my base view
#    And I click attack button on baseview
#    And I click campaign button
#    And I wait district view appears on screen
#    And I click "chapter 1 node 9" to attack
#    And I click attack button on pve map
#    And I wait for pve battle view appears on screen
#    And I deploy 10 units to the map
#    Then I wait for the battle report window to show up
#    And I wait 4 seconds
#    And I click the exit button on battle summary window
#    And I wait for base view appears








