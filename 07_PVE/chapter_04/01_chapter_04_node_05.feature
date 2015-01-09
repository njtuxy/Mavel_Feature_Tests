@pve_chatper_04
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_04_node_05
  Scenario: chapter 04 node 05 pve battle
    Given I have 20 a3 phoenix
    And I have 10 m3 talos
    And I relaunch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 4 node 5" with 20 phoenix and 10 talos
