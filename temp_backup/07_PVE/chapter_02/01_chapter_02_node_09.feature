@pve_chatper_02
Feature: pve battle
  As an Player
  I want to play pve battles

  @01_chapter_02_node_09
  Scenario: chapter 02 node 09 pve battle
    Given I have 20 a3 phoenix
    And I launch the game on dev environment and skip fte
    And I am on my base view
    And I attack "chapter 2 node 9" with 20 units
