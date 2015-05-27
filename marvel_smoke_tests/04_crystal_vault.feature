@marvel_smoke_tests, @Crystal_Vault_smoke_tests
Feature: Smoke Test for crystal vault

  Background:
    Given There are following crystals in crystal vault:
      | Crystal_Name         | Order_from_the_bottom_the_screen |
      | PREMIUM HERO CRYSTAL | 5                                |
      | ARENA CRYSTAL        | 4                                |
      | ALLIANCE CRYSTAL     | 3                                |
      | FREE CRYSTAL         | 2                                |
      | DAILY CRYSTAL        | 1                                |

  @Go_To_crystal_vault
  Scenario: Go to crystal vault from main menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Crystal button on main menu
    Then I can see Crystal vault after wait


#  @Order_Of_Crystals_on_Screen
#  Scenario: Check the order of crystals on screen
#    Given I am at crystal vault
#    Then the crystal orders on screen are same as their orders in the table.
#
#  @Premium_Hero_Crystal_Packs
#  Scenario: Check Premium Hero Crystal Packs
#    Given I am at crystal vault
#    And I wait 4 seconds
#    And I touch premium hero crystal
#    And I wait 2 seconds
#    And I should see the following crystal packs on screen
#      | pack_name       | Order_from_the_bottom_the_screen | Price |
#      | 1 CRYSTAL PACK  | 3                                | 100   |
#      | 5 CRYSTAL PACK  | 2                                | 500   |
#      | 10 CRYSTAL PACK | 1                                | 1000  |
#    And I touch premium hero crystal
#
##    And I wait 4 seconds
##    And I touch premium hero crystal
#
#    And I wait 4 seconds
#    And I purchase the one premium crystal pack
#
##    And I should be at crystal screen after wait
##    And I wait 4 seconds
##    And The crystal counter value is "x1"
##    And I wait and click the open crystal button
##    And I should get crystal detail window
##    And I click Back To Vault button
##    Then I am at crystal vault