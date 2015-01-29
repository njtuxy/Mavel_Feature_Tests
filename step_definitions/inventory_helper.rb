Given(/^I am at Inventory/) do
  wait_for_game_object_present_on_screen("InventoryLandingScreen")
end

Given(/^I click upgrade items button in inventory$/) do
  wait_and_touch_ios_device("Blueprints", wait_before_click:2)
end

Given(/^I click items button in inventory$/) do
  wait_and_touch_ios_device("Consumables", wait_before_click:2)
end

Given(/^I can see upgrade items screen after wait$/) do
  wait_for_game_object_present_on_screen("BlueprintsScreen")
end

Given(/^I can see my items screen after wait$/) do
  wait_for_game_object_present_on_screen("MyItemsScreen")
end






