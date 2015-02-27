@marvel_smoke_tests, @Crystal_Vault_smoke_tests
Feature: Smoke Test for crystal vault

  @Go_To_crystal_vault
  Scenario: Go to crystal vault from main menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Crystal button on main menu
    Then I can see Crystal vault after wait

  @Inventory_Upgrade_Items_Menu
  Scenario: Check all available crystal types
    Given I am at crystal vault
    And I can see 6 different type of crystals in crystal vault

  @Premium_Hero_Crystal
  Scenario: Check Premium Hero Crystal
    Given I am at crystal vault
    And I wait 4 seconds
#    And Premium hero crystal index is 5 from bottom
    And I touch premium hero crystal
    And I wait 2 seconds
    And I should see 3 different premium crystal packs
    And The one premium crystal pack price is 100
    And The five premium crystal pack price is 500
    And The ten premium crystal pack price is 1000
    And I purchase the one premium crystal pack
    And I should be at crystal screen after wait
    And I wait 4 seconds
    And The crystal counter value is "x1"
    And I wait and click the open crystal button
    And I should get crystal detail window
    And I click Back To Vault button
    Then I am at crystal vault