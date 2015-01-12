Given(/^I click the Staging Enviroment$/) do
  # skip the fte
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
  # select staging env
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.56, y:0.21}})]})
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
