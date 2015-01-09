@pve_chatper_05
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_05_node_01
  Scenario: chapter 05 node 01 pve battle
    Given I have 25 a3 phoenix
    And I have 18 m3 talos
    And I relaunch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 5 node 01" with 25 phoenix and 18 talos
