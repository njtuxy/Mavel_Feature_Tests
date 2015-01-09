Given(/^I click the build button$/) do
  touch_ios_device("BuildButton")
end

Given(/^I choose a trap to build$/) do
  # touch_ios_device("Trap_Generic_Geo")
  # touch_building_on_screen("Trap_Generic_Geo")
  touch_child_object_on_screen("BuildingsScrollView", "4")
end

Given(/^I choose a repair dock to build$/) do
  # touch_ios_device("Trap_Generic_Geo")
  # touch_building_on_screen("Trap_Generic_Geo")
  touch_child_object_on_screen("BuildingsScrollView", "5")
end

Given(/^I click ok to place the building$/) do
  touch_ios_device("ConfirmButton")
end

Given(/^I click speed up button$/) do
  touch_ios_device("SpeedupButton")
end






