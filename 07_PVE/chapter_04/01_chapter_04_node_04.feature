@pve_chatper_04
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_04_node_04
  Scenario: chapter 04 node 04 pve battle
    Given I have 20 a3 phoenix
    And I have 10 m3 talos
    And I relaunch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 4 node 4" with 20 phoenix and 10 talos
