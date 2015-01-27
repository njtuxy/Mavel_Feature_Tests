# target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.17, y:0.52}});

Given(/^I click the New UDID button on testing hud$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.17, y:0.52}})]})
end

# Given()do
#   Label_Tap
# end

Then(/^I wait for text tap anywhere to continue present on screen$/) do
  wait_for_game_object_present_on_screen("Label_Tap")
end

Then(/^I should see the text "(.*?)" on FTE screen$/) do |arg1|
  assert game_object_includes_text(arg1)
end


Then(/^I should see the text "(.*?)" in FTE screen text panel$/) do |arg1|
  assert game_object_includes_text("Panel_1", arg1)
end

Then(/^I click text tap anywhere to continue on FTE screen$/) do
  calabash_touch_ios(20, 30)
  sleep 2
end

# Then(/^I wait and c`lick the Tutorial Confirmation Prompt$/) do
#   wait_and_touch_ios_device("TutorialConfirmationPrompt", wait_before_click:4)
# end

Then(/^I wait until Tutorial Confirmation Prompt present$/) do
  wait_until_I_see_the_fte_confirmation_prompt_window_on_screen
end

Then(/^I click the button on Tutorial Confirmation Prompt$/) do
  wait_and_touch_ios_device("2_Button", wait_before_click:1)
end

Then(/^I click the button on special Tutorial Confirmation Prompt$/) do
  calabash_touch_ios(512, 625)
end

Then(/^I wait until I see the right anchor text on screen$/) do
  wait_until_I_see_the_right_anchor_text_on_screen
end

Then(/^I wait until I see the left anchor text on screen$/) do
  wait_until_I_see_the_left_anchor_text_on_screen
end

Then(/^I tap on the right side of the screen until right anchor text "(.*?)" is gone$/) do |arg1|
   text_appears = game_object_includes_text("RightAnchor", arg1)
   while(text_appears)
       calabash_touch_ios(962,360)
       text_appears = game_object_includes_text("RightAnchor", arg1)
   end
end

Then(/^I swipe to right on screen until right anchor text is gone$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
  while(get_visibility_of_right_anchor_text == true) do
    swipe("right")
    p "DEBUG ------>"
    p "Try once!"
    # get_visibility_of_right_anchor_text
  end
end



Then(/^I wait and click right side of the screen on the introduction text for (\d+) times$/) do |arg1|
  # @counter = get_game_object_text_on_screen("RightAnchor")
  # until @counter.include?("4 / 4") do
  #   calabash_touch_ios(962,360)
  #   @counter = get_game_object_text_on_screen("RightAnchor")
  # end

  # game_object_includes_text("RightAnchor", arg1)

  # Those methods are work!
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapCount: 1, touchCount: 1,tapOffset:{x:0.95, y:0.47}})]})
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapCount: 1, touchCount: 1,tapOffset:{x:0.95, y:0.47}})]})
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapCount: 1, touchCount: 1,tapOffset:{x:0.95, y:0.47}})]})
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapCount: 1, touchCount: 1,tapOffset:{x:0.95, y:0.47}})]})

  #Those methods don't work!
  # send_uia_command({:command => "[target.tapWithOptions({x: 0.84, y: 0.48})]"})
  # send_uia_command({:command => "[target.tapWithOptions({x: 0.84, y: 0.48})]"})
  # send_uia_command({:command => "[target.tapWithOptions({x: 0.84, y: 0.48}, {tapCount: 1, touchCount: 1})]"})
  # send_uia_command({:command => "[target.tapWithOptions({x: 0.84, y: 0.48}, {tapCount: 1, touchCount: 1})]"})
  # send_uia_command({:command => "[target.tapWithOptions({x: 0.84, y: 0.48}, {tapCount: 1, touchCount: 1})]"})
end


Then(/^I should see right anchor text "(.*?)"$/) do |arg1|
  assert game_object_includes_text("RightAnchor", arg1)
end

Then(/^I should see left anchor text "(.*?)"$/) do |arg1|
  assert game_object_includes_text("LeftAnchor", arg1)
end

Then(/^I should see the introduction text "(.*?)" on the left side of the screen$/) do |arg1|
  assert game_object_includes_text("LeftAnchor", arg1)
end

Then(/^I swipe on screen from vertically to introduction text for (\d+) times$/) do |arg1|
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
  @counter = get_game_object_text_on_screen("RightAnchor")
  until @counter.include?("4 / 4") do
    p "Debug >>>>>>>>>>>>1"
    p @counter
    p "Debug >>>>>>>>>>>>2"
    swipe("right")
    @counter = get_game_object_text_on_screen("RightAnchor")
  end
  # swipe("right")
  # swipe("right")
  # swipe("right")
  # Then I swipe right
  # Then I swipe right
  # Then I swipe right
  # Then I swipe right
  # game_object_hash = get_game_object("RightAnchor")
  # x = game_object_hash["x"].to_i/2
  # y = (game_object_hash["y"].to_i - 768).abs
  # for i in 1..arg1
  #   send_uia_command({:command => %Q[target.dragFromToForDuration( {x:#{x}, y:#{y-500}},{x:#{x}, y:#{y}, 0.5)]})
  # end

  #Those methods are NOT working!
  # send_uia_command({:command => "[target.dragFromToForDuration({x: 0.64, y: 0.48}, {x: 0.94, y: 0.48}, 0.5)]"})
  # send_uia_command({:command => "[target.dragFromToForDuration({x: 0.64, y: 0.48}, {x: 0.94, y: 0.48}, 0.5)]"})
  # send_uia_command({:command => "[target.dragFromToForDuration({x: 0.64, y: 0.48}, {x: 0.94, y: 0.48}, 0.5)]"})
  # send_uia_command({:command => "[target.dragFromToForDuration({x: 0.64, y: 0.48}, {x: 0.94, y: 0.48}, 0.5)]"})

  #Those methods are working!
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
end

Then(/^I press and hold on the left side of the screen for (\d+) seconds$/) do |arg1|
  #this is a working method for press and holding on the screen!!
  send_uia_command({:command => "[target.touchAndHold({x: 0.14, y: 0.48}, 4.9)]"})
end

Then(/^I press and hold on the right side of the screen for (\d+) seconds$/) do |arg1|
  # send_uia_command({:command => "[target.touchAndHold({x: 0.94, y: 0.48}, 1.8)]"})
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].touchAndHold(1.8)]})
end


Then(/^I should get the FTE Tutorial Confirmation Prompt$/) do
  # wait_for_game_object_present_on_screen("TutorialConfirmationPrompt")
  wait_until_I_see_the_fte_confirmation_prompt_window_on_screen
end


Then(/^I tap the right side of the screen for light attack until I get the prompt window$/) do
  while(get_visibility_of_fte_confirmation_prompt_window == false)
    calabash_touch_ios(962,360)
  end
  # until @counter.include?(arg1) do
  #   calabash_touch_ios(962,360)
  #   @counter = get_game_object_text_on_screen("TutorialConfirmationPrompt")
  # end
end

Then(/^I should get a dialog with message$/) do
  wait_for_game_object_present_on_screen("DialogueItem_00")
end

Then(/^I click the special attack button$/) do
  touch_game_object_on_screen("ScalePivot")
end

Then(/^I click skip button$/) do
  touch_game_object_on_screen("SkipLabel")
end

Then(/^I wait and click skip button$/) do
  wait_and_touch_ios_device("SkipLabel", wait_before_click:2)
end


Then(/^I wait and click go to vault button$/) do
  wait_and_touch_ios_device("1_Button", wait_before_click:2)
end

Then(/^I tap on the crystal$/) do
  sleep 3
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.50, y:0.50}})]})
end





Then(/^I wait and claim the rewards by clicking the pricing button$/) do
  wait_and_touch_ios_device("Pricing_Button", wait_before_click: 2)
end

Then(/^I drag the crystal to the middle of the screen$/) do
  sleep 3
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.10, y:0.23}, endOffset:{x:0.50, y:0.50}})]})
end

Then(/^I wait until I get the new dialog$/) do
  wait_for_game_object_present_on_screen("DialogueItem_04")
end

Then(/^I click a node to attack$/) do
  sleep 3
  touch_building_on_screen("fx_p_map_flare_current_tile(Clone)")
end

Then(/^I wait and click a node to attack$/) do
  sleep 3
  wait_and_touch_ios_device("fx_p_map_flare_current_tile", wait_before_click:8)
end


Then(/^I wait and click fight button$/) do
  wait_and_touch_ios_device("FightButton", wait_before_click:8)
end

Then(/^I swipe to left$/) do
  swipe("left")
end

Then(/^I swipe to right$/) do
  swipe("right")
end

Then(/^I do light attack$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapCount: 1, touchCount: 1,tapOffset:{x:0.95, y:0.47}})]})
end

Then(/^I do medium attack$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.58, y:0.86}, endOffset:{x:0.90, y:0.90}})]})
end

Then(/^I do heavy attack$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].touchAndHold(1.8)]})
end

Then(/^I do block$/) do
  send_uia_command({:command => "[target.touchAndHold({x: 0.14, y: 0.48}, 1.9)]"})
end

Then(/^I do special attack$/) do
  touch_game_object_on_screen("ScalePivot")
end

Then(/^I click continue button$/) do
  touch_game_object_on_screen("ContinueButton")
end

Then(/^I fight until I get the victory window$/) do
  until (get_game_object("ContinueButton")["object_found"] == 'true') do
     step "I do light attack"
     step "I do light attack"
     step "I do light attack"
     step "I do medium attack"
     step "I do special attack"
  end
end

Then(/^I choose spider man to upgrade$/) do
  wait_and_touch_ios_device("poolitem_0", wait_before_click:2)
end

Then(/^I wait and click upgrade button$/) do
  wait_and_touch_ios_device("UpgradeButton", wait_before_click:2)
end

Then(/^I tap to add ios8$/) do
  wait_and_touch_ios_device("poolitem_0", wait_before_click:2)
end

Then(/^I tap FuseButton$/) do
  wait_and_touch_ios_device("FuseButton$", wait_before_click:2)
end

Then(/^I wait and click "Fight" button from main menu$/) do
  wait_and_touch_ios_device("Fight", wait_before_click:2)
end

Then(/^I wait and click StoryQuestPanel$/) do
  wait_and_touch_ios_device("StoryQuestPanel", wait_before_click:2)
end

Then(/^I wait and click Quest1$/) do
  wait_and_touch_ios_device("Quest1", wait_before_click:2)
end

Then(/^I wait and click BeginQuestButton/) do
  wait_and_touch_ios_device("BeginQuestButton", wait_before_click:2)
end













































