@marvel_smoke_tests, @marvel_fte_smoke_tests
Feature: Smoke Test the Main Menu

  @fte_functionality
  Scenario: user_can_view_the_available_crystals_for_purchase
    Given I click the New UDID button on testing hud
    And I click the Staging Environment
    And I wait the login screen to present
    And I touch anywhere to continue
    And I wait for text tap anywhere to continue present on screen
    And I wait 15 seconds
    And I should see the text "Ah, this one is" in FTE screen text panel
    And I click text tap anywhere to continue on FTE screen
    And I wait for text tap anywhere to continue present on screen
    And I should see the text "But the serious collector lives for the thrill of the hunt." in FTE screen text panel
    And I click text tap anywhere to continue on FTE screen
    And I wait for text tap anywhere to continue present on screen
    And I should see the text "CHAMPION: GAMORA" in FTE screen text panel
    And I click text tap anywhere to continue on FTE screen
    And I wait for text tap anywhere to continue present on screen
    And I should see the text "COLLECTOR!!!" in FTE screen text panel
    And I click text tap anywhere to continue on FTE screen
    And I wait for text tap anywhere to continue present on screen
    And I should see the text "Welcome, Summoner!" in FTE screen text panel
    And I click text tap anywhere to continue on FTE screen
    And I wait until Tutorial Confirmation Prompt present
    And I click the button on Tutorial Confirmation Prompt
  #Thor start to fight Hulk
    And I wait for text tap anywhere to continue present on screen
    And I wait 3 seconds
    And I click text tap anywhere to continue on FTE screen
    And I should see the introduction text "LIGHT ATTACK" on right side of the screen
    And I wait and click right side of the screen on the introduction text for 4 times
    And I wait 3 seconds
    And I should see the introduction text "SWIPE RIGHT!" on right side of the screen
    And I should see the introduction text "MEDIUM ATTACK" on right side of the screen
    And I swipe on screen from vertically to introduction text for 4 times
    And I wait 3 seconds
    And I should see the introduction text "PRESS" on the left side of the screen
    And I should see the introduction text "HOLD" on the left side of the screen
    And I should see the introduction text "BLOCK" on the left side of the screen
    And I should see the introduction text "LEFT" on the left side of the screen
    And I press and hold on the left side of the screen for 4 seconds
   Then I should get the FTE Tutorial Confirmation Prompt
    And I click the button on Tutorial Confirmation Prompt
#    And I wait and click the Tutorial Confirmation Prompt
    And I should see the introduction text "PRESS" on the left side of the screen
#    And I should see the introduction text "HOLD" on right side of the screen
    And I should see the introduction text "HEAVY ATTACK" on right side of the screen
    And I should see the introduction text "ON RIGHT" on right side of the screen
    And I press and hold on the right side of the screen for 3 seconds
   Then I should get the FTE Tutorial Confirmation Prompt
    And I wait 3 seconds
    And I click the button on special Tutorial Confirmation Prompt
    #Real fight starts!
   Then I tap the right side of the screen for light attack until I get the prompt window with message "You've saved enough power"
   Then I click the button on Tutorial Confirmation Prompt
    And I click the special attack button
   Then I should get a dialog with message
    And I click skip button
    And I wait and click go to vault button
   Then I wait until Tutorial Confirmation Prompt present
    And I click the button on Tutorial Confirmation Prompt
    And I wait and claim the rewards by clicking the pricing button
   Then I wait until Tutorial Confirmation Prompt present
    And I click the button on Tutorial Confirmation Prompt
    And I drag the crystal to the middle of the screen
    Then I wait 10 seconds
    And I click the button on Tutorial Confirmation Prompt
    And I drag the crystal to the middle of the screen
    Then I wait 10 seconds
    And I click the button on Tutorial Confirmation Prompt
    And I wait until I get the new dialog
    And I click skip button
    And I click a node to attack
    And I wait and click fight button
    And I wait until Tutorial Confirmation Prompt present
    And I click the button on Tutorial Confirmation Prompt
    And I swipe to left
    And I swipe to right
    And I wait until Tutorial Confirmation Prompt present
    And I click the button on Tutorial Confirmation Prompt
    And I wait until Tutorial Confirmation Prompt present
    And I click the button on Tutorial Confirmation Prompt
#    And I wait and click right side of the screen on the introduction text for  times











  #Specials_Player


















