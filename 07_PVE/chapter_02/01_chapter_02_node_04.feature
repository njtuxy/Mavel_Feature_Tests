@pve_chatper_02
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_02_node_04
  Scenario: chapter 02 node 04 pve battle
    Given I have 10 a3 phoenix
    And I launch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 2 node 4" from tier1 to tier5
