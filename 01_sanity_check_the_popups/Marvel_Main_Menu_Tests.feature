@Marvel_Main_Menu_Tests
Feature: Smoke Test the Main Menu

  @Click_Hard_Currency_Button
  Scenario: Click_Home_Button
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the hard currency button
   Then I can see the units store after wait

  @User_Can_Access_The_Store_From_Menu
  Scenario: User_Can_Access_The_Store_From_Menu
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the Store button
   Then I can see Store after wait

  @User_Can_Access_The_Inventory_From_Menu
  Scenario: User_Can_Access_The_Inventory_From_Menu
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the Inventory button
   Then I can see Inventory after wait

  @User_Can_Access_The_Champions_Page_From_Menu
  Scenario: User_Can_Access_The_Champions_Page_From_Menu
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the Champions button
   Then I can see Champions page after wait

  @User_Can_Access_The_Crystal_Vault_From_Menu
  Scenario: User_Can_Access_The_Crystal_Vault_From_Menu
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the Crystal button
   Then I can see Crystal vault after wait

  @User_Can_Access_The_Versus_PVP_From_Menu
  Scenario: User_Can_Access_The_Versus_PVP_From_Menu
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the Versus button
   Then I can see Versus PVP after wait

  @User_Can_Access_The_Quest_From_Menu
  Scenario: User_Can_Access_The_Quest_From_Menu
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the Quest button
   Then I can see Quest after wait

  @User_Can_Access_Home_Screen_From_Main_Menu_By_Pressing_Home_Button
  Scenario: User_Can_Access_Home_Screen_From_Main_Menu_By_Pressing_Home_Button
    Given I click the Staging Enviroment
    And I wait and touch the login screen
    And I wait and click the Quest button
   Then I can see Quest after wait
