Given(/^I click the Staging Enviroment$/) do
  # skip the fte
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
  # select staging env
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.56, y:0.21}})]})
end

Given(/^I touch somewhere on the screen$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.40, y:0.51}})]})
end

Given(/^I click the hard currency button$/) do
  touch_ios_device("HardCurrencyButton")
end
