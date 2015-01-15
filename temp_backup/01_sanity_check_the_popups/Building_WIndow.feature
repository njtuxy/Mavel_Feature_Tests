@Building_Window

Feature: Try to build a building on the map
  As an Player
  I want to build a building from the building window

  @Build_A_Trap
  Scenario: Build_A_Trap_On_Screen
    Given I launch the prototype game
#    And I select hard base
    And I wait 5 seconds
    And I click the build button
    And I wait 5 seconds
    And I choose a trap to build
    And I wait 1 seconds
    And I click ok to place the building
    And I wait 1 seconds
    And I click speed up button
    And I wait 15 seconds

  @Build_A_Repair_Dock
  Scenario: Build_A_Repair_Dock_On_Screen
    Given I launch the prototype game
#    And I select hard base
    And I wait 5 seconds
    And I click the build button
    And I wait 5 seconds
    And I choose a repair dock to build
    And I wait 1 seconds
    And I click ok to place the building
    And I wait 1 seconds
    And I click speed up button
    And I wait 15 seconds
