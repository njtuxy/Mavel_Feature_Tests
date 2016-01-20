@marvel_smoke_tests, @marvel_fte_smoke_tests
Feature: Smoke Test the Main Menu

  @fte_functionality
  Scenario: first_time_player_can_go_through_the_FTE
    Given I click the New UDID button on testing hud
    And I click the Dev Environment
    And I wait the login screen to present
    And I touch anywhere to continue
    And I wait 60 seconds
#    And I wait for text tap anywhere to continue present on screen
    And Text container "Panel_1" presents on screen with text "Ah, this one is" and tap to continue fte
#    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "But the serious collector lives for the thrill of the hunt." and tap to continue fte
#    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "CHAMPION: GAMORA" and tap to continue fte
#    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "COLLECTOR!!!" and tap to continue fte
#    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "Welcome, Summoner!" and tap to continue fte

#    And I click text tap anywhere to continue on FTE screen
#    And I wait and click to close Tutorial Confirmation Prompt

    #Better with 2 hands message
    Then I wait and click to close Tutorial Confirmation Prompt
    And I wait 10 seconds
    And I click text tap anywhere to continue on FTE screen
    And I wait 5 seconds
    And I click text tap anywhere to continue on FTE screen

    #Thor V.S Hulk start
    #light attack
    And I wait until I see the right anchor text on screen
    And I should see right anchor text "LIGHT ATTACK"
    And I tap on the right side of the screen until right anchor text "LIGHT ATTACK" is gone

    #medium attack
    And I wait 3 seconds
    And I should see right anchor text "MEDIUM ATTACK"
    And I swipe to right on screen until right anchor text is gone

    #Block
    And I wait until I see the left anchor text on screen
    And I should see left anchor text "BLOCK"
    And I press and hold on the left side of the screen for 4 seconds

    #Confirm windows
    #FIX ME!
    Then I wait and click to close Tutorial Confirmation Prompt

    #Heavy Attack
    And I wait until I see the right anchor text on screen
    And I should see right anchor text "HEAVY ATTACK"
    And I press and hold on the right side of the screen for 3 seconds
    And I wait and click to close Tutorial Confirmation Prompt

    #Real fight starts!
#    And I wait 5 seconds
#   Then I tap the right side of the screen for light attack until I get the prompt window
   Then I wait and click to close Tutorial Confirmation Prompt

    #TOBEFIXED
    And I wait 10 seconds
    And I click the special attack button

    #Battle won, get a message
   Then I should get a dialog which ID is "DialogueItem_00"
    And I wait and click "SkipLabel"

    #Go to vault
    And I wait and click go to vault button
   Then I wait and click to close Tutorial Confirmation Prompt

    #Claim 50 Units reward

    #TOBEFIXED
    And I wait and claim the rewards by clicking the pricing button

    #TOBEREMOVED
#    Then I wait and click to close Tutorial Confirmation Prompt

    #Drag crystal to open
    And I drag the crystal to the middle of the screen
    And I wait 6 seconds
    And I tap in the center of the screen
    Then I wait and click to close Tutorial Confirmation Prompt

    #Drag another crystal to open
    And I drag the crystal to the middle of the screen
    And I wait 6 seconds
    And I tap in the center of the screen
    And I wait 10 seconds
    Then I wait and click to close Tutorial Confirmation Prompt

    #Battle Kang's team
    #And I wait until I get the new dialog
    And I should get a dialog which ID is "DialogueItem_04"
    And I wait and click "SkipLabel"
    And I click a node to attack
    And I wait 5 seconds
    And I wait and click fight button
    And I wait 25 seconds
#    Then I wait and click to close Tutorial Confirmation Prompt

    #Dodge
    And I swipe to left on screen until left anchor text is gone
    #Dash
    And I swipe to right on screen until right anchor text is gone

    Then I wait and click to close Tutorial Confirmation Prompt
#     And I wait and click to close Tutorial Confirmation Prompt

    #Real fight, Spider man v.s Iron man
#    And I deplete health of opponents from debug menu
    And I turn on god mode

    And I kill opponent from debug menu

    And I wait and click to close Tutorial Confirmation Prompt
    And I wait 3 seconds
    And I click text tap anywhere to continue on FTE screen
#
#    And I click the button on Tutorial Confirmation Prompt
#   Then I wait and click to close Tutorial Confirmation Prompt
#    And I wait and click continue button

    #Click to attack a new node
    And I wait and click a node to attack
    And I wait and click "SkipLabel"
    And I wait 5 seconds
    And I wait and click fight button
    And I wait 20 seconds

    #Wof V.S Hulk
    And I kill opponent from debug menu
#    And I fight until I get the victory window

    #COMPLETE WINDOW
#    And I wait and click continue button
    And I wait and click to close Tutorial Confirmation Prompt
    And I click text tap anywhere to continue on FTE screen

    #Go to upgrade
    #IOS-8 window
    And I wait and click to close Tutorial Confirmation Prompt
    And I wait 10 seconds
    And I wait and click upgrade button
    And I wait and click to close Tutorial Confirmation Prompt

    #Select the first champion to upgrade
    And I tap to add ios8
    And I wait and click upgrade button again
    And I tap to add ios8
    And I tap to add ios8
    And I wait and click upgrade button again and again
    And I wait and click to close Tutorial Confirmation Prompt

    #FIXIT !
    And I wait and click pull tab button

    And I wait and click the Home button
    And I wait and click to close Tutorial Confirmation Prompt

    And I wait and click the fight menu button
    And I wait and click the story quest button
    And I wait and click the quest1 button
    And I wait and click BeginQuestButton
    And I wait and click "SkipLabel"


#
#    #Close the timed reward window, claim the free gifts
#    And I wait and click claim free gift button
#
#
#    #Click Fight! from Main Menu
#    And I wait and click "Fight" button from main menu
#    And I wait and click StoryQuestPanel
#    And I wait and click Quest1
#
#    ##########problem here!!! cannot find the begin quest button
#    And I wait and click BeginQuestButton
#    And I wait and click skip button
#    And I wait and click a node to attack
#    And I wait and click skip button
#    #WHY HAS THE FOLLOWING STEP: SOMETIMES PLAYER GOT WOLVERINE, AND IT HAS CLASS BONUS AND ONE CONFIRMATION WINDOW ABOUT IT.
#    And I wait and click to close the Tutorial Confirmation Prompt if there is one
#    And I wait and click fight button
#
#    #Fight!
#    And I deplete health of opponents from debug menu
#    And I fight until I get the victory window