#  EconomyButton
#  target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.52, y:0.75}});
#
#  HardCurrencyButtonInput
#  target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.67, y:0.51}});
#
#  Add HardCurrency
#  target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.71, y:0.52}});
#
#  Close Debug Menu
#  target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.51, y:0.05}});

Given(/^I call out the debug menu$/) do
  sleep 6
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapCount: 1, touchCount: 4,tapOffset:{x:0.95, y:0.47}})]})
end

Given(/^I click economy button$/) do
  sleep 8
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.50, y:0.90}})]})
end

Given(/^I click the hard currency button input$/) do
  sleep 8
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.6, y:0.50}})]})
end

Given(/^I input number from keyboard$/) do
  wait_for_keyboard()
  sleep 8
  keyboard_enter_text("9999")
  done
end

Given(/^I click add hard currency button$/) do
  sleep 8
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.71, y:0.52}})]})
end

Given(/^I close debug menu$/) do
  sleep 8
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:0.51, y:0.05}})]})
end






