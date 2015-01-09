@sanity_check
Feature: Do a quick sanity check for a fresh installation
  As an Player
  I want to click around the game
  So I can make sure the game is good overall

  @player_info_modal_sanity_check
  Scenario: sanity check player info modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I click player info button
    Then I should see player info modal

  @base_shield_modal_sanity_check
  Scenario: sanity check base shield modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
      And I click base shield button
    Then I should see base shield modal

  @buildings_modal_sanity_check
  Scenario: sanity check buildings modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I click build button
    Then I should see buildings modal

  @troops_modal_sanity_check
  Scenario: sanity check troops modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I click train troops button
    Then I should see troops modal

  @shop_modal_sanity_check
  Scenario: sanity check shops modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I click expanded menu
    And I click shop button
    Then I should see store modal

  @alliances_modal_sanity_check
  Scenario: sanity check alliances modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I click expanded menu
    And I click alliance button
    Then I should see alliance modal

  @mail_modal_sanity_check
  Scenario: sanity check mail modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I click expanded menu
    And I click mail button
    Then I should see mail modal

  @settings_modal_sanity_check
  Scenario: sanity check settings modal
    Given I launch the game on staging environment and skip fte
    And I am on my base view
    And I click expanded menu
    And  I click settings button
    Then I should see settings modal

#  @starters_pack_modal_sanity_check
#  Scenario: sanity check starter pack modal
#    Given I launch the game on staging environment and skip fte
#    And I am on my base view
#    And I click beginner sale button
#    Then I should see beginner sale modal


