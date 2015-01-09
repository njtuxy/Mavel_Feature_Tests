@pve_chatper_02
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_02_node_01
  Scenario: chapter 02 node 01 pve battle
#    Given I have m3 talos
#    And I have a3 phoenix
#    And I launch the game on dev environment and skip fte
#    And I am on my base view
#    And I click attack button on baseview
#    And I click campaign button
#    And I wait district view appears on screen
#    And I click "chapter 2 node 01" to attack
#    And I click attack button on pve map
#    And I wait for pve battle view appears on screen
#    And I deploy 10 units to the map
#    Then I wait for the battle report window to show up
#    And I wait 4 seconds
#    And I click the exit button on battle summary window
#    And I wait for base view appears
#
#  @01_chapter_01_node_06
#  Scenario: chapter 01 node 06 pve battle
    Given I have 10 a3 phoenix
    And I launch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 2 node 1" from tier1 to tier5
