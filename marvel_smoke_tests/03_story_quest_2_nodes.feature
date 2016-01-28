@marvel_smoke_tests, @marvel_story_quest2
Feature: Smoke Test the story quest1 nodes

  @story_quest2_functionality
  Scenario: player_go_play_story_quest2_nodes
    And I click the Dev Environment
    And I wait the login screen to present
    And I wait and click the fight menu button
    And I wait and click the story quest button
    And I wait and click the quest2 button
    And I wait and click BeginQuestButton
    And I wait and click "SkipLabel"

    And I click a node to attack
#    And I wait and click "SkipLabel"
    And I wait 5 seconds
    And I click a node to attack
    And I wait and click "SkipLabel"

    And I click to close Tutorial Confirmation Prompt if it shows up
    And I wait and click fight button
    And I wait the battle screen to present
    And I turn on god mode and kill opponent
    And I wait for text tap anywhere to continue present on screen and tap to continue
    And I wait 10 seconds

    #Node2
    And I click a node to attack
    And I should see level up popup with level 2 and tap to continue
    And I click a node to attack
    And I wait and click "SkipLabel"
    And I click to close Tutorial Confirmation Prompt if it shows up
    And I wait and click fight button
    And I wait the battle screen to present
    And I kill opponent from debug menu
    And I wait for text tap anywhere to continue present on screen and tap to continue

    #Node3
    And I click a node to attack
    And I wait and click "SkipLabel"
    And I wait and click "SkipLabel"
    And I click to close Tutorial Confirmation Prompt if it shows up
    And I wait and click fight button
    And I wait the battle screen to present
    And I kill opponent from debug menu
    And I wait for text tap anywhere to continue present on screen and tap to continue

      #Complete quest 1 window
    And I see progress bar presents on screen with text "84% EXPLORED"
    And I wait and click back to quests button on quest completion window








