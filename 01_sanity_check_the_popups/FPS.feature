@FPS
Feature: Try to send a chat message
  As an Player
  I want to send a chat message
  So I can make chat with other players

  @Get_FPS_Value
  Scenario: get FPS value from device
    Given I launch the prototype game
#    And I select hard base
    And I wait 5 seconds
    And I start combat
    And I wait 3 seconds
    And I choose opponent3 to attack
    And I wait 10 seconds
#    And I draw a path on the screen
#    And I wait 5 seconds
#    And I long press the button
#    And I wait 3 seconds
    And I go to the busy area
    And I wait 20 seconds
#    And I long press the button
    And I swipe on the screen
#    And I go to the busy area
    And I long press the button
    And I wait 10 seconds
    And I save the FPS value and store it to google drive

#    And I tap on building "Base_Guildhouse_T1(Clone)"
#    And I tap on building "Base_TownHall_T1(Clone)"






