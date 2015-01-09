@fte_feature
Feature: FTE tests
  As a new player I should able to
  see and go through the FTE

  @fte
  Scenario: new player go through the FTE
    Given I launch the game on staging environment and delete player preferences
    And I wait for the movie clip present on the screen
    Then I click skip movie button
    And I wait for base view appears
    And I wait 4 seconds
    And I click build button
    Then I should see the building modal on the screen
    And I select the first item on the building modal to build
    And I click the place button
    And I wait 6 seconds
    And I click build button
    And I select the first item on the building modal to build
    And I click the place button
    And I wait 3 seconds
    And I click build speed up button
    And I click finish building item now
    And I click train troops button
    And I select the first item on the training modal to train
    And I click add button on training details modal for 4 times
    And I click train button on training details modal
    And I wait 3 seconds
    And I click train speed up button
    And I click finish building item now
    Then I click attack button on baseview
    And I wait 5 seconds
  #  And I click campaign button on combat map
  #    And I wait 5 seconds
    And I click attack button on pve map
    And I wait 10 seconds
    And I click deploy troops on pve view for 5 times
    And I select "machine Gun" to attack
    Then I wait for the battle report window to show up
    And I wait 4 seconds
    And I click the exit button on battle summary window
    And I wait for base view appears
    And I wait 5 seconds
    Then I click quest button
    And I click claim button on quest modal
    And I click exit button on quest modal
    And I wait 4 seconds
    Then I input my player name
    And I click change name button
    And I wait 12 seconds
    Then I should be on base view





#@fte_without_movie_clip
#Scenario: new player go through the FTE
#  Given I launch the game on "Staging" enviornment
#    And I wait base view appears
#    And I click build button
#   Then I should see the building modal on the screen
#    And I select the first item on the building modal to build
#    And I click the place button
#    And I wait 6 seconds
#    And I click build button
#    And I select the first item on the building modal to build
#    And I click the place button
#    And I wait 3 seconds
#    And I click build speed up button
#    And I click finish now button
#    And I click train troops button
#    And I select the first item on the training modal to train
#    And I click add button on training details modal for 4 times
#    And I click train button on traning deatails modal
#    And I wait 3 seconds
#    And I click train speed up button
#    And I click finish now button
#   Then I click attack button on baseview
#    And I wait 5 seconds
#    And I click attack button on pve map
#    And I wait 10 seconds
#    And I click deploy toops on pve view for 5 times
#    And I select "machin Gun" to attack
#   Then I wait the combat result window to show up
#    And I click the exit button on battle summary window
#    And I wait base view appears
#   Then I click quest button
#    And I click claim button on quest modal
#    And I click exit button on quest modal
#    And I wait 4 seconds
#   Then I input my player name
#    And I click change name button
#    And I wait 12 seconds
#   Then I should be on base view





