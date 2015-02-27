@marvel_smoke_tests, @champions_smoke_tests
Feature: Smoke Test for Inventory

  @Go_To_Champions
  Scenario: Go to champions screen from main menu
    Given I click the Staging Environment
    And I wait the login screen to present
    And I wait and click the Champions button on main menu
    Then I can see Champions screen after wait

#  @View_My_Champions
#  Scenario: View my Champion on champions screen
#    Given I am at Champions screen
#    And I can see champions slots
#
#  @Get_More_Hero
#  Scenario: Get More Hero
#    Given I am at Champions screen
#    And I click get more button to get more hero
#    And I can see Crystal vault after wait
#    And I purchase the one premium crystal pack
#    And I should be at crystal screen after wait
#    And I wait and click the open crystal button
#    And I click upgrade champions on prompt window
#    And I can see Champions screen after wait
#
#   @Sell_Champion
#    Given I am at Champions screen
#    And I tap on first champion on the screen
#    And I tap sell button on the prompt window
#    And I tap continue button on the prompt window
#    And I tap confirm button on the prompt window


