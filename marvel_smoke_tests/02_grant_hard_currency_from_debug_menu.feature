@marvel_smoke_tests, @debug_menu_grant_currency
Feature: grant currency from debug menu

  @Debug_menu_add_hard_currency
  Scenario: user_can_grant_hard_currency_from_debug_menu
     Given I click the Staging Environment
       And I wait the login screen to present
       And I wait and click the hard currency button
       And I call out the debug menu
       And I click economy button
       And I click the hard currency button input
       And I input number from keyboard
       And I click add hard currency button
       And I close debug menu
       And I wait 30 seconds

