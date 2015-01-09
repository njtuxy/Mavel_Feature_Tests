Given(/^I launch the prototype game$/) do
  if(!is_socket_ready_to_connect?)
    wait_for_game_socket_sever_is_ready
  end
end

Given(/^I select hard base$/) do
  calabash_touch_ios(999, 107);
end

Given(/^I start combat$/) do
  # calabash_touch_ios(999, 678);
  touch_ios_device("CombatButton")
end

Given(/^I choose opponent1 to attack$/) do
  touch_ios_device("Opponent1")
end

Given(/^I choose opponent3 to attack$/) do
  touch_ios_device("Opponent3")
end


Given(/^I touch the screen at one location$/) do
  calabash_touch_ios(1006, 261);
end

Given(/^I draw a path on the screen$/) do
  send_uia_command({:command => %Q[target.dragFromToForDuration({x:514.00, y:378.50}, {x:973.50, y:0.50}, 2.5)]})
end

Given(/^I long press the button$/) do
  send_uia_command({:command => %Q[target.tapWithOptions({x:63.50, y:686.00}, {tapCount: 1, touchCount: 1, duration: 18.3})]})
end

Given(/^I swipe on the screen$/) do
  send_uia_command({:command => %Q[target.dragFromToForDuration( {x:512.50, y:350.00},{x:512.00, y:600.00}, 1.0)]})
end

Given(/^I go to the busy area$/) do
  calabash_touch_ios(478, 65);
end

Given(/^I save the FPS value and store it to google drive$/) do
  get_FPS_value_from_device
end

Given(/^I wait (\d+) seconds$/) do |sleep_time_in_seconds|
  sleep(Integer(sleep_time_in_seconds))
end

Given(/^I tap on building "(.*?)"$/) do |building_name|
  touch_building_on_screen(building_name)
end

Given(/^I click to select ability 1$/) do
  touch_ios_device("Ability_1")
end



