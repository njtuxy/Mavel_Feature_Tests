@marvel_smoke_tests, @marvel_global_navigation_bar_smoke_tests
Feature: Smoke Test the Main Menu

  @Click_Hard_Currency_Button
  Scenario: Click_Home_Button
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the hard currency button
   Then I can see the units store after wait

  @User_Can_Access_The_Store_From_Menu
  Scenario: User_Can_Access_The_Store_From_Menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Store button on main menu
   Then I can see Store after wait
    And I click back button to go back to home screen
    And I can see Home screen after wait

  @User_Can_Access_The_Inventory_From_Menu
  Scenario: User_Can_Access_The_Inventory_From_Menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Inventory button on main menu
   Then I can see Inventory after wait
    And I click back button to go back to home screen
    And I can see Home screen after wait


  @User_Can_Access_The_Champions_Page_From_Menu
  Scenario: User_Can_Access_The_Champions_Page_From_Menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Champions button on main menu
   Then I can see Champions page after wait
    And I click back button to go back to home screen
    And I can see Home screen after wait


  @User_Can_Access_The_Crystal_Vault_From_Menu
  Scenario: User_Can_Access_The_Crystal_Vault_From_Menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Crystal button on main menu
   Then I can see Crystal vault after wait
    And I click back button to go back to home screen
    And I can see Home screen after wait

  @User_Can_Access_The_Alliance_Page_From_Menu_And_Choose_Player_Name
  Scenario: User_Can_Access_The_Alliance_Screen_From_Main_Menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Alliance button on main menu
   Then I can see Alliance screen after wait
#    And I wait and click input bar
#    And I input username from keyboard
#    And I click OK button
#    And I click OK button
    #OK button on alliance window
    And I wait and click "BasicButtonSmall[Instance]"
    And I click back button to go back to home screen
    And I can see Home screen after wait

  @User_Can_Access_The_Quest_From_Menu
  Scenario: User_Can_Access_The_Quest_From_Menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Quest button on main menu
   Then I can see Quest after wait

  @User_Can_Access_Home_Screen_From_Main_Menu_By_Pressing_Home_Button
  Scenario: User_Can_Access_Home_Screen_From_Main_Menu_By_Pressing_Home_Button
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Quest button on main menu
   Then I can see Quest after wait

   @Global_Navigation_Bar_Tests
   Scenario: Global_Navigation_Bar_Tests
    Given I click the Staging Environment
	  And I wait the login screen to present
      And I wait and click the Quest button on main menu
   	 Then I can see Quest after wait

  @Gobal_Navigation_Bar_Smoke_Tests
  Scenario: Gobal_Navigation_Bar_Smoke_Tests
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Store button on main menu
   Then I can see Store after wait
    And I wait and click the Back Button On The Top Menu
    And I wait and click the Inventory button on main menu
   Then I can see Inventory after wait
    And I wait and click the Back Button On The Top Menu
    And I wait and click the Champions button on main menu
   Then I can see Champions page after wait
    And I wait and click the Back Button On The Top Menu
    And I wait and click the Crystal button on main menu
   Then I can see Crystal vault after wait
    And I wait and click the Back Button On The Top Menu
    And I wait and click the Alliance button on main menu
   Then I can see Versus PVP after wait
    And I wait 6 seconds
    And I wait and click the Back Button On The Top Menu
    And I wait and click the Quest button on main menu
    And I can see Quest after wait
    And I toggle the top bar menu
    And I wait and click the Home button
   Then I can see Home screen after wait







