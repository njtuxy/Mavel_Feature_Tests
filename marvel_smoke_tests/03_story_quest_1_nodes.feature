@marvel_smoke_tests, @marvel_story_quest1
Feature: Smoke Test the story quest1 nodes

  @story_quest1_functionality
  Scenario: player_go_play_story_quest1_nodes
    Given I click the New UDID button on testing hud
      And I click skip FTE button
      And I click the Dev Environment
      And I wait the login screen to present
      And I click text tap anywhere to continue on FTE screen
      And I wait and click the fight menu button
      And I wait and click the story quest button
      And I wait and click the quest1 button
      And I wait and click the edit team button
      And I wait 10 seconds
      And I drag a champion to the first spot
      And I drag a champion to the second spot
      And I wait and click accept button
      And I wait and click BeginQuestButton
      And I wait and click "SkipLabel"
      And I click a node to attack
      And I wait and click "SkipLabel"
      And I wait 5 seconds
      And I click to close Tutorial Confirmation Prompt if it shows up
      And I wait and click fight button
      And I wait 15 seconds
      And I turn on god mode and kill opponent
#      And I kill opponent from debug menu
      And I wait for text tap anywhere to continue present on screen
      And I click text tap anywhere to continue on FTE screen

      #Node2
      And I click a node to attack
      And I wait and click "SkipLabel"
      And I click to close Tutorial Confirmation Prompt if it shows up
      And I wait and click fight button
      And I wait 10 seconds
      And I kill opponent from debug menu
      And I wait for text tap anywhere to continue present on screen
      And I click text tap anywhere to continue on FTE screen

      #Node3
      And I click a node to attack
      And I wait and click "SkipLabel"
      And I click to close Tutorial Confirmation Prompt if it shows up
      And I wait and click fight button
      And I wait 10 seconds
      And I kill opponent from debug menu
      And I wait for text tap anywhere to continue present on screen
      And I click text tap anywhere to continue on FTE screen

      #Complete quest 1 window
      And I see progress bar presents on screen with text "100% EXPLORED"
      And I wait and click back to quests button on quest completion window








