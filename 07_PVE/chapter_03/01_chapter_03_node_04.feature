@pve_chatper_03
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_03_node_04
  Scenario: chapter 03 node 04 pve battle
    Given I have 20 a3 phoenix
    And I have 10 m3 talos
    And I relaunch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 3 node 4" with 20 phoenix and 10 talos
