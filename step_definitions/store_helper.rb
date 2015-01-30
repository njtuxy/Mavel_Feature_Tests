Given(/^I can see the units store after wait$/) do
  wait_for_game_object_present_on_screen("HardCurrencyScreen")
  # touch_ios_device("HardCurrencyButton")
  # assert_equal(1,2)
end

Given(/^I wait and click the Store button on main menu$/) do
  wait_and_touch_ios_device("Store", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Store after wait$/) do
  wait_for_game_object_present_on_screen("StoreLandingScreen")
end

Given(/^I am at store$/) do
  wait_for_game_object_present_on_screen("StoreLandingScreen")
end

Given(/^I click Crystal button in store$/) do
  wait_and_touch_ios_device("HeroesButton", wait_before_click:2)
end

Given(/^I click Items button in store$/) do
  wait_and_touch_ios_device("ConsumablesButton", wait_before_click:2)
end

Given(/^I click Units button in store$/) do
  wait_and_touch_ios_device("CurrencyButton", wait_before_click:2)
end

Given(/^I can see Items store screen after wait$/) do
  wait_for_game_object_present_on_screen("StoreScreen")
end