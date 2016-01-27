And(/^I wait the battle screen to present$/) do
  wait_for_game_object_present_on_screen("PauseButton")
  sleep 5
end