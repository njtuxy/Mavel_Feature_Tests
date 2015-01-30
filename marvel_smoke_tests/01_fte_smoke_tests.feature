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
    And Text container "Panel_1" presents on screen with text "Ah, this one is"
    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "But the serious collector lives for the thrill of the hunt."
    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "CHAMPION: GAMORA"
    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "COLLECTOR!!!"
    And I tap on the screen to continue the FTE
    And Text container "Panel_1" presents on screen with text "Welcome, Summoner!"
    And I click text tap anywhere to continue on FTE screen
    And I wait and click to close Tutorial Confirmation Prompt

    #Better with 2 hands message
    And I wait for text tap anywhere to continue present on screen
    And I wait 3 seconds
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
    Then I wait and click to close Tutorial Confirmation Prompt

    #Heavy Attack
    And I wait until I see the right anchor text on screen
    And I should see right anchor text "HEAVY ATTACK"
    And I press and hold on the right side of the screen for 3 seconds
    And I wait and click to close Tutorial Confirmation Prompt

    #Real fight starts!
    And I wait 5 seconds
   Then I tap the right side of the screen for light attack until I get the prompt window
   Then I wait and click to close Tutorial Confirmation Prompt
    And I click the special attack button

    #Battle won, get a message
   Then I should get a dialog which ID is "DialogueItem_00"
    And I wait and click "SkipLabel"

    #Go to vault
    And I wait and click go to vault button
   Then I wait and click to close Tutorial Confirmation Prompt

    #Claim 50 Units reward
    And I wait and claim the rewards by clicking the pricing button
    Then I wait and click to close Tutorial Confirmation Prompt

    #Drag crystal to open
    And I drag the crystal to the middle of the screen
    And I wait 6 seconds
    And I tap in the center of the screen
    Then I wait and click to close Tutorial Confirmation Prompt

    #Drag another crystal to open
    And I drag the crystal to the middle of the screen
    And I wait 6 seconds
    And I tap in the center of the screen
    Then I wait and click to close Tutorial Confirmation Prompt

    #Battle Kang's team
    #And I wait until I get the new dialog
    And I should get a dialog which ID is "DialogueItem_04"
    And I wait and click "SkipLabel"
    And I click a node to attack
    And I wait 5 seconds
    And I wait and click fight button
    Then I wait and click to close Tutorial Confirmation Prompt

    #Dodge
    And I swipe to left on screen until left anchor text is gone
    #Dash
    And I swipe to right on screen until right anchor text is gone

    Then I wait and click to close Tutorial Confirmation Prompt
     And I wait and click to close Tutorial Confirmation Prompt

    #Real fight, Spider man v.s Iron man
    And I deplete health of opponents from debug menu
    And I fight until I get the Tutorial Confirmation Prompt

    #Victory window, claim reward
    And I click the button on Tutorial Confirmation Prompt
   Then I wait and click to close Tutorial Confirmation Prompt
    And I wait and click continue button

    #Click to attack a new node
    And I wait and click a node to attack
    And I wait and click "SkipLabel"
    And I wait 5 seconds
    And I wait and click fight button

    #HAWKEYE V.S HULK
    And I deplete health of opponents from debug menu
    And I fight until I get the victory window


    #COMPLETE WINDOW
    And I wait and click continue button
    And I wait and click to close Tutorial Confirmation Prompt
    And I wait and click continue button

    #Go to upgrade
    And I wait and click to close Tutorial Confirmation Prompt
    And I wait 3 seconds
    And I wait and click to close Tutorial Confirmation Prompt
    And I wait 3 seconds
    #This line fails sometime, the test keeps waiting

    #And I wait and click to close Tutorial Confirmation Prompt

    #Click spider man to upgrade
    #poolitem_0
    And I choose spider man to upgrade
    #UpgradeButton
    And I wait and click upgrade button
    And I wait until Tutorial Confirmation Prompt present
    And I click the button on Tutorial Confirmation Prompt
    #poolitem_0
    And I tap to add ios8
    And I tap to add ios8
    And I tap FuseButton

    #Finish upgrade
    And I wait and click to close Tutorial Confirmation Prompt
    And I wait and click to close Tutorial Confirmation Prompt
    #Click Fight! from Main Menu
    And I wait and click "Fight" button from main menu
    And I wait and click StoryQuestPanel
    And I wait and click Quest1

    ##########problem here!!! cannot find the begin quest button
    And I wait and click BeginQuestButton
    And I wait and click skip button
    And I wait and click a node to attack
    And I wait and click skip button
    And I wait and click fight button

    #Fight!
    And I deplete health of opponents from debug menu
    And I fight until I get the victory window