@train_all_kinds_of_troops
Feature: train troops
  As an Player
  I want to train different kinds of troops

  @01_train_troops
  Scenario: train troops
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click train button in right navigation panel

    And I click "T1 Python" to train
    And I train 5 of it

    And I click "A1 Harpy" to train
    And I train 5 of it

    And I click "M1 Fury" to train
    And I train 5 of it

    And I click "T2 Minotaur" to train
    And I train 5 of it

    And I click "A2 Pegasus" to train
    And I train 5 of it

    And I click "M2 Chimera" to train
    And I train 5 of it

    And I click "T3 Zeus" to train
    And I train 5 of it

    And I click "A3 Phoenix" to train
    And I train 5 of it

    And I click "M3 Talos" to train
    And I train 3 of it
    