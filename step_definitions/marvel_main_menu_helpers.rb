Given(/^I click the Staging Environment/) do
  # skip the fte
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
  # select staging env
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.56, y:0.21}})]})
end

Given(/^I wait and click the Back Button On The Top Menu$/) do
  wait_and_touch_ios_device("Back", wait_before_click:1)
end

Given(/^I wait and touch the login screen$/) do
	wait_for_game_object_present_on_screen("EBUI_Root")
	# send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
	calabash_touch_ios(20, 30)
end

Given(/^I touch somewhere on the screen$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
end

Given(/^I wait and click the hard currency button$/) do	
  wait_and_touch_ios_device("HardCurrencyButton", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see the units store after wait$/) do  
  wait_for_game_object_present_on_screen("HardCurrencyScreen")
  # touch_ios_device("HardCurrencyButton")
  # assert_equal(1,2)
end

Given(/^I wait and click the Store button$/) do 
  wait_and_touch_ios_device("Store", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Store after wait$/) do  
  wait_for_game_object_present_on_screen("StoreLandingScreen")
end

Given(/^I wait and click the Inventory button$/) do 
  wait_and_touch_ios_device("MyStuff", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Inventory after wait$/) do  
  wait_for_game_object_present_on_screen("InventoryLandingScreen")
end

Given(/^I wait and click the Champions button$/) do 
  wait_and_touch_ios_device("Heroes", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Champions page after wait$/) do  
  wait_for_game_object_present_on_screen("HeroesScreen")
end

Given(/^I wait and click the Crystal button$/) do 
  wait_and_touch_ios_device("Gacha", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Crystal vault after wait$/) do  
  wait_for_game_object_present_on_screen("GachaStoreScreen")
end

Given(/^I wait and click the Versus button$/) do 
  wait_and_touch_ios_device("Versus", wait_before_click:5)
  # touch_ios_device("HardCurrencyButton")
end

Given(/^I can see Versus PVP after wait$/) do  
  wait_for_game_object_present_on_screen("PVPScreen")
end

Given(/^I wait and click the Quest button$/) do 
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

Given(/^I input text from keyboard$/) do
  keyboard_enter_text("testuser")
  done
end

Given(/^I click OK button$/) do
  wait_and_touch_ios_device("ButtonOK", wait_before_click:2)
end

