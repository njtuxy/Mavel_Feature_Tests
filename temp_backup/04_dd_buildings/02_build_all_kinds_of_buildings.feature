@build_all_kinds_of_buildings
Feature: build new buildings
  As an Player
  I want to build one of each different buildings

  @01_build_one_of_each_different_buildings
  Scenario: build one of each buildings
    Given I launch the game on dev environment and skip fte
    And I am on my base view
    And I click build button in right navigation panel
    And I build the "Alloy Refinery" by calling api
    And I click finish now button
    And I wait 5 seconds

    And I click build button in right navigation panel
    And I build the "War Factory" by calling api
    And I click finish now button
    And I click build speed up button
    And I click finish building item now

    And I build the "Wall" by calling api
    And I wait 2 seconds

    And I click build button in right navigation panel
    And I build the "Hexium Extractor" by calling api
    And I wait 6 seconds

    And I click build button in right navigation panel
    And I build the "Machine Gun" by calling api
    And I click build speed up button
    And I click finish building item now

    And I build the "Resource Vault" by calling api
    And I click build speed up button
    And I click finish building item now

    And I build the "Laser Tower" by calling api
    And I click build speed up button
    And I click finish building item now

    And I build the "Research Lab" by calling api
    And I click finish now button
    And I click build speed up button
    And I click finish building item now

    And I build the "Missile Launcher" by calling api
    And I click build speed up button
    And I click finish building item now

    And I build the "Photon Cannon" by calling api
    And I click build speed up button
    And I click finish building item now














