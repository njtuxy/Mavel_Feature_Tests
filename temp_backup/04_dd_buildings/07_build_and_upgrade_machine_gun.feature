@build_and_upgrade_machine_gun
Feature: Upgrade existing buildings
  As an Player
  I want to upgrade existing buildings

#  @01_build_machine_gun
#  Scenario: build machine gun
#    Given I launch the game on dev environment and skip fte
#    And I am on my base view
#    And I build 8 machine guns
#    And I build 1 machine guns

  @01_upgrade_machine_gun
  Scenario: upgrade machine gun from level 1 to level 20
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I tap on level 1 machine gun
    And I wait 2 seconds
    And I click upgrade button
    When I click upgrade now button
    Then the building level is 2
    When I click upgrade now button
    Then the building level is 3
    When I click upgrade now button
    Then the building level is 4
    When I click upgrade now button
    Then the building level is 5
    When I click upgrade now button
    Then the building level is 6
    When I click upgrade now button
    Then the building level is 7
    When I click upgrade now button
    Then the building level is 8
    When I click upgrade now button
    Then the building level is 9
    When I click upgrade now button
    Then the building level is 10
    When I click upgrade now button
    Then the building level is 11
    When I click upgrade now button
    Then the building level is 12
    When I click upgrade now button
    Then the building level is 13
    When I click upgrade now button
    Then the building level is 14
    When I click upgrade now button
    Then the building level is 15
    When I click upgrade now button
    Then the building level is 16
    When I click upgrade now button
    Then the building level is 17
    When I click upgrade now button
    Then the building level is 18
    When I click upgrade now button
    Then the building level is 19
    When I click upgrade now button
    Then the building level is 20
    And I click exit button
    And I wait 10 seconds
    And I claim the reward on the level up popup if it shows
    And I should get highest level machine gun on base view