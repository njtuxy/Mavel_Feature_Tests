Then(/^I should get a dialog which ID is "(.*?)"$/) do |arg1|
  wait_for_game_object_present_on_screen(arg1)
end

# Then(/^I wait until I get the new dialog$/) do
#   wait_for_game_object_present_on_screen("DialogueItem_04")
# end

#
# Then(/^I should see text "(.*?)" in text panel "(.*?)"$/) do |arg1, arg2|
#   assert game_object_includes_text(arg2, arg1)
# end
#
# Then(/^I should see text "(.*?)" in screen dialogue "(.*?)"$/) do |arg1, arg2|
#   assert game_object_includes_text(arg2, arg1)
# end

Then(/^Text container "(.*?)" presents on screen with text "(.*?)"$/) do |arg1, arg2|
  wait_for_game_object_present_on_screen(arg1)
  assert game_object_includes_text(arg1, arg2)
end

Then(/^Text container "(.*?)" presents on screen with text "(.*?)" and tap to continue fte$/) do |arg1, arg2|
  wait_for_game_object_present_on_screen(arg1)
  assert game_object_includes_text(arg1, arg2)
  step "I tap on the screen to continue the FTE"
end


And(/^I wait and click claim free gift button$/) do
  wait_and_touch_ios_device("ClaimButton", wait_before_click:5)
end

And(/^I should see level up popup with level (\d+) and tap to continue$/) do |arg1|
  name = "LevelUpPopup"
  wait_for_game_object_present_on_screen(name)
  level = get_game_object(name)["text01"]
  assert level ==  arg1
  step "I touch anywhere to continue"

end