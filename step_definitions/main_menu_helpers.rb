Given(/^I click the Dev Environment/) do
  # select staging env
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.42, y:0.06}})]})
  # log("UIA command executed! and touched staging Enviornment button at 0.50, 0.21")
end

Given(/^I click skip FTE button/) do
  # skip the fte
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.30, y:0.51}})]})
end


Given(/^I wait and click the Back Button On The Top Menu$/) do
  wait_and_touch_ios_device("Back", wait_before_click:1)
end

Given(/^I wait the login screen to present$/) do
	sleep 20
end

Given(/^I click the Staging Environment and I wait the login screen to present and I touch anywhere to continue$/) do
  step "I click the Staging Environment"
  wait_for_game_object_present_on_screen("EBUI_Root")
  step "I touch anywhere to continue"
end

Given(/^I wait the login screen to present and I touch anywhere to continue$/) do
  wait_for_game_object_present_on_screen("EBUI_Root")
  step "I touch anywhere to continue"
end


Given(/^I touch anywhere to continue$/)do
  sleep 8
  # calabash_direct_touch(20, 30)
  uia_tap_offset("{:x 100, :y 200}")
  # send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.10, y:0.52}})]})
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

Given(/^I can see Champions screen after wait$/) do
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

Given(/^I wait and click the fight menu button$/) do
  wait_and_touch_ios_device("Fight", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I wait and click the story quest button$/) do
  wait_and_touch_ios_device("StoryQuest", wait_before_click:5)
end

Given(/^I wait and click the quest1 button$/) do
  wait_and_touch_ios_device("Quest1", wait_before_click:5)
end

Given(/^I wait and click the edit team button$/) do
  # wait_and_touch_ios_device("EditTeamButton", wait_before_click:15)
  sleep 5
  uia_tap_offset('{:x 512, :y 750 }')
end

Given(/^I drag a champion to the first spot$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.63, y:0.39}, endOffset:{x:0.19, y:0.18}, duration:2.2})]})
end

Given(/^I drag a champion to the second spot$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.65, y:0.41}, endOffset:{x:0.20, y:0.34}, duration:2.2})]})
end

Given(/^I wait and click accept button$/) do
  wait_and_touch_ios_device("DoneButton", wait_before_click:5)
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



