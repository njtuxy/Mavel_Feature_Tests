@build_and_upgrade_alloy_refinery @buildings
Feature: Upgrade existing buildings
  As an Player
  I want to upgrade existing buildings

#  @01_build_a_new_alloy_refinery
#  Scenario: build alloy refinery
#    Given I launch the game on dev environment and skip fte
#    And I am on my base view
#    And I open the build modal and choose the first building to build
#    And I click finish now button
#    And I wait 5 seconds
#
  @01_upgrade_alloy_refinery
  Scenario: upgrade alloy refinery from level 1 to level 20
    Given I launch the game on dev environment and skip fte
    And I am on my base view
  #first tap to collect resource
    And I tap on level 1 alloy refinery
  #second tap to launch the upgrade buttons
    And I tap on level 1 alloy refinery
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
    And I should get highest level alloy refinery on base view

#  @03_build_more_alloy_refinery
#  Scenario: build more alloy refinery
#    Given I launch the game on dev environment and skip fte
#    And I am on my base view
#    And I open the build modal and choose the first building to build
#    And I click finish now button
#    And I wait 5 seconds
#
#    And I open the build modal and choose the first building to build
#    And I click finish now button
#    And I wait 5 seconds
#
#    And I open the build modal and choose the first building to build
#    And I click finish now button
#    And I wait 5 seconds
#
#    And I open the build modal and choose the first building to build
#    And I click finish now button
#    And I wait 5 seconds
#
#    And I open the build modal and choose the first building to build
#    And I click finish now button
#    And I wait 5 seconds
