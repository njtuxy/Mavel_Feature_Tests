@marvel_smoke_tests, @Store_smoke_tests
Feature: Smoke Test for store

  @Go_To_Store
  Scenario: Go to Store from main menu
    Given I click the Staging Environment
      And I wait the login screen to present
      And I wait and click the Store button on main menu
     Then I can see Store after wait

  @Store_Crystal_Menu
  Scenario: Go to crystal vault from store
    Given I am at store
      And I click Crystal button in store
     Then I can see Crystal vault after wait
      And I click back button to go back to previous screen
     Then I am at store

  @Store_Items_Menu
  Scenario: Go to crystal vault from store
    Given I am at store
      And I click Items button in store
     Then I can see Items store screen after wait
      And I click back button to go back to previous screen
     Then I am at store

   @Store_HardCurrency_Menu
   Scenario: Go to hard currency screen from store
     Given I am at store
     And I click Units button in store
     Then I can see the units store after wait
     And I click back button to go back to previous screen
     Then I am at store



