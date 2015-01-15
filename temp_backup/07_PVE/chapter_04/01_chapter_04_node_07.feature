@pve_chatper_04
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_04_node_07
  Scenario: chapter 04 node 07 pve battle
    Given I have 25 a3 phoenix
    And I have 18 m3 talos
    And I relaunch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 4 node 7" with 25 phoenix and 18 talos
