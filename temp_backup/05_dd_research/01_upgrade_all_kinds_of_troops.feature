@upgrade_all_kinds_of_troops
Feature: upgrade level of troops
  As an Player
  I want to research different kinds of troops and upgrade them to higher level

  @01_research_troops
  Scenario: research troops
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click research button in right navigation panel

    And I click "T1 Python" to research
    And I research the troop to level 3
    And I click go back button

    And I click "A1 Harpy" to research
    And I click research now button
    And I research the troop to level 3
    And I click go back button

    And I click "M1 Fury" to research
    And I research the troop to level 3
    And I click go back button

    And I click "T2 Minotaur" to research
    And I research the troop to level 3
    And I click go back button

    And I click "A2 Pegasus" to research
    And I research the troop to level 3
    And I click go back button

    And I click "M2 Chimera" to research
    And I research the troop to level 3
    And I click go back button

    And I click "T3 Zeus" to research
    And I research the troop to level 3
    And I click go back button

    And I click "A3 Phoenix" to research
    And I research the troop to level 3
    And I click go back button

    And I click "M3 Talos" to research
    And I research the troop to level 3
    And I click go back button

    