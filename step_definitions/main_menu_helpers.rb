Given(/^I click the Staging Environment/) do
  # select staging env
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.56, y:0.21}})]})
end

Given(/^I click skip FTE button/) do
  # skip the fte
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
end


Given(/^I wait and click the Back Button On The Top Menu$/) do
  wait_and_touch_ios_device("Back", wait_before_click:1)
end

Given(/^I wait the login screen to present$/) do
	wait_for_game_object_present_on_screen("EBUI_Root")
end

Given(/^I touch anywhere to continue$/)do
  sleep 15
  calabash_touch_ios(20, 30)
end

Given(/^I touch somewhere on the screen$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
end

Given(/^I wait and click the hard currency button$/) do	
  wait_and_touch_ios_device("HardCurrencyButton", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I wait and click the Inventory button on main menu$/) do
  wait_and_touch_ios_device("MyStuff", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Inventory after wait$/) do  
  wait_for_game_object_present_on_screen("InventoryLandingScreen")
end

Given(/^I wait and click the Champions button on main menu$/) do
  wait_and_touch_ios_device("Heroes", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Champions page after wait$/) do  
  wait_for_game_object_present_on_screen("HeroesScreen")
end

Given(/^I wait and click the Crystal button on main menu$/) do
  wait_and_touch_ios_device("Gacha", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Crystal vault after wait$/) do  
  wait_for_game_object_present_on_screen("GachaStoreScreen")
end

Given(/^I wait and click the Alliance button on main menu$/) do
  wait_and_touch_ios_device("Alliance", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Alliance screen after wait$/) do
  wait_for_game_object_present_on_screen("AllianceNavScreen")
end

Given(/^I wait and click the Quest button on main menu$/) do
  wait_and_touch_ios_device("Quest", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Quest after wait$/) do  
  wait_for_game_object_present_on_screen("SelectActScreen")
end

Given(/^I wait and click the Home button$/) do 
  wait_and_touch_ios_device("Home", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Home screen after wait$/) do  
  wait_for_game_object_present_on_screen("HomeScreen")
end

Given(/^I toggle the top bar menu$/) do
  wait_and_touch_ios_device("TriangleDown", wait_before_click:5)
end


Given(/^I wait and click input bar$/) do
  wait_and_touch_ios_device("Input", wait_before_click:6)
end

Given(/^I input username from keyboard$/) do
  sleep 5
  keyboard_enter_text(SecureRandom.hex(6))
  done
end

Given(/^I click OK button$/) do
  wait_and_touch_ios_device("ButtonOK", wait_before_click:3)
end

Given(/^I click back button to go back to previous screen$/) do
  wait_and_touch_ios_device("Back", wait_before_click:2)
end



